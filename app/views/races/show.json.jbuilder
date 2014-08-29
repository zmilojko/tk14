json.extract! @race, :id, :category_id, :race_time, :name, :description, :intermediate_points, :status, :created_at, :updated_at
json.category @race.category
