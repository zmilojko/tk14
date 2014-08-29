json.array!(@races) do |race|
  json.extract! race, :id, :category_id, :race_time, :name, :description, :intermediate_points, :status
  json.category race.category, :code, :description, :length
  json.url race_url(race, format: :json)
end
