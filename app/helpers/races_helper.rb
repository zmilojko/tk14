module RacesHelper
  def next_state(race)
    case race.status 
      when 'not_started'; 'ongoing'
      when 'ongoing'; 'completed'
      when 'completed'; 'closed'
      else false 
    end
  end

  # both times are given as floats of seconds
  def format_time(current,lead)
    if current.nil?
      return ""
    end
    puts "time is #{current.inspect}"
    puts "lead is #{lead.inspect}"
    if not lead.nil?
      current -= lead
    end
    h = current.to_i / 3600
    m = current.to_i % 3600 / 60
    puts "time is #{current}"
    s = "%04.01f" %  (current % 60)
    str = if not lead.nil? then "+" else "" end
    str+= ("%02d:" % h) if h > 0
    str+= ("%02d:" % m) if h > 0 or m > 0
    str+= s
  end
end
