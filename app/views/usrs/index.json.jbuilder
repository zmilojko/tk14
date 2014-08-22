json.array!(@usrs) do |usr|
  json.extract! usr, :id, :email
  json.url usr_url(usr, format: :json)
end
