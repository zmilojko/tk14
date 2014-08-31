module RacesHelper
  def next_state(race)
    case race.status 
      when 'not_started'; 'ongoing'
      when 'ongoing'; 'completed'
      when 'completed'; 'closed'
      else false 
    end
  end

  def format_time(current,lead)
    if current.nil?
      return ""
    end
    current -= lead
    h = current.to_i / 3600
    m = current.to_i % 3600 / 60
    s = "%04.01f" %  (current % 60)
    str = if lead > 0 then "+" else "" end
    str+= ("%02d:" % h) if h > 0
    str+= ("%02d:" % m) if h > 0 or m > 0
    str+= s
  end
end
