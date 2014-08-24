json.array!(@races) do |race|
  json.extract! race, :id, :category_id, :race_time, :name, :description, :intermediate_points, :race_secret, :status
  json.url race_url(race, format: :json)
end
