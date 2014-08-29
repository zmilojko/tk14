module RacesHelper
  def next_state(race)
    case race.status 
      when 'not_started'; 'ongoing'
      when 'ongoing'; 'completed'
      when 'completed'; 'closed'
      else false 
    end
  end
end
