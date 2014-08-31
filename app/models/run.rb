class Run < ActiveRecord::Base
  belongs_to :race
  belongs_to :user

  # this returns a decimal number in seconds since the start
  def intermediate(point)
    if point.to_s == "final"
      final
    else
      start = Time.parse(JSON.parse(times)["start_timestamp"])
      inter = Time.parse(JSON.parse(times)[point.to_s])
      (inner - start) * 24 * 60 * 60    
    end
  rescue
    nil
  end

  # this returns a decimal number in seconds of the race, official time
  def final
    JSON.parse(times)["final"].to_f
  rescue
    nil
  end

  # verdict is nil, race is ongoing or accepted.
  def verdict
    JSON.parse(times)["verdict"]
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
  #   
end
