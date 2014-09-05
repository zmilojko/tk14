class Run < ActiveRecord::Base
  belongs_to :race
  belongs_to :user
  
  include Comparable

  # always sort two runs by the last common time, or number if none has even started
  def <=>(r)
    puts "using <=>"
    raise ArgumentError, 'Cannot compare two Runs of different races!' if race != r.race
    race.all_timestamps.reverse.each do |spot|
      if (res = compare_times(spot, r)) != 0
        puts "comparing by #{spot}"
        return res
      end
    end
    puts "comparing by number"
    number <=> r.number
  end

  def compare_times(spot, r)
    nilcomp timestamp_or_elapsed(spot), r.timestamp_or_elapsed(spot)
  end

  #follow returns what should be compared: timestamp for start,
  # and otherwise elapsed time. Plus for finish_timestamp and final returns
  # final if it exists, otherwise finish_timestamp.
  def timestamp_or_elapsed(spot)
    spot = spot.gsub(/_timestamp/, "").to_sym if spot.class == String
    case spot 
      when :start then timestamp(:start)
      when :finish, :final then
        if timestamp(:final).nil?
          elapsed_time(:finish)
        else
          elapsed_time(:final)
        end
      else
        elapsed_time(spot)
    end
  end

  def nilcomp(l, r)
    if l.nil?
      if r.nil? then 0 else 1 end
    else
      if r.nil? then -1 else l <=> r end
    end
  end

  def times_hash
    if not times.empty?
      JSON.parse(times)
    else
      nil
    end
  end

  # many thanks to https://gist.github.com/fjfish/1461638
  def read_time(timestamp)
    if timestamp.class == Float or timestamp.class == Fixnum
      Time.new timestamp
    else
      string_elements = timestamp.split /[-T:Z+]+/
      Time.new *(string_elements.map(&:to_f))
    end
  end

  def timestamp(spot)
    return nil if times_hash.nil?
    a = times_hash[spot.to_s]
    if a.nil?
      a = times_hash["#{spot}_timestamp"]
    end
    if a.nil?
      nil
    else
      read_time a
    end
  end

  def format_time(current,lead, spot)
    return "(ERROR, <0)" if current < 0
    if current.nil?
      return ""
    end
    if self != lead
      current -= lead.elapsed_time(spot)
    end
    h = current.to_i / 3600
    m = current.to_i % 3600 / 60
    s = "%04.01f" %  (current % 60)
    str = if (self != lead) then "+" else "" end
    str+= ("%02d:" % h) if h > 0
    str+= ("%02d:" % m) if h > 0 or m > 0
    str+= s
  end


  def formated_time_mark(spot, lead)
    if spot.to_sym == :start_timestamp 
      if not (start = timestamp(:start)).nil?
        if self != lead
          start.strftime "%H:%M:%S.%1N"
        else
          start.strftime("(%Y-%m-%e)<BR/>%H:%M:%S.%1N").html_safe
        end
      else
        nil
      end 
    else
      if (elaps_time = elapsed_time(spot)).nil?
        nil
      else
        format_time(elaps_time, lead, spot)
      end
    end
  end

  # this returns a decimal number in seconds of the race, official time
  def elapsed_time(spot)
    if spot.to_sym == :final
      final
    else
      a = timestamp(spot)
      if a.nil? or (start = timestamp(:start)).nil?
        nil
      else
        a - start        
      end
    end
  end
  def final
    a = times_hash["final"]
    if a.nil? then nil else a.to_f end
  rescue
    nil
  end

  # field times is a JSON object where each field represents an intermediate
  # or final time. Suffix _timestamp means it is an actual timestamp (date+time
  # or may be just time, whichever is easier) while without suffix means time
  # elapsed since start.
  # Special fields are:
  #   start_timestamp: time of the start as marked
  #   finish_timestamp: time of the finish as marked
  #   final: time in which the race is completed, as officially marked.
  #   #{point}_timestamp: time of the passing the intermediate point, as marked
  #   verdict: verdict on the race, one of DNS, DNF, DQ. If field is missing and final
  #            field is set, run is officially acepted.
  # Verdicts are not used yet.
end
