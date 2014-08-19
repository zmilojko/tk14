json.array!(@categories) do |category|
  json.extract! category, :id, :code, :description, :length
  json.url category_url(category, format: :json)
end
