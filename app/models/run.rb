class Run < ActiveRecord::Base
  belongs_to :race
  belongs_to :user

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



  # verdict is nil, race is ongoing or accepted.
  def verdict
    JSON.parse(times)["verdict"]
  rescue
    nil
  end

  def exists_spot(spot)
    not (times_hash[spot.to_s].nil? and times_hash["#{spot}_timestamp"])
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
  #   
end
