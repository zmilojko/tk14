json.extract! @race, :id, :category_id, :race_time, :name, :description, :intermediate_points, :status, :created_at, :updated_at
json.category @race.category
if @race.status.to_sym == :ongoing or @race.status.to_sym == :completed
  json.latest_spot @race.latest_timestamp
end
fastest_run = 0
position = 1
json.runs do |json|
  json.array! @race.runs_sorted do |run|
    json.number run.number
    json.competitor run.user
    if not run.times.empty?
      times = JSON.parse run.times
      json.times times
      json.timemark format_time(a = run.elapsed_time(@race.latest_timestamp), fastest_run)
      fastest_run = a if fastest_run == 0
      json.position = position
      position+=1
    end
  end
end
