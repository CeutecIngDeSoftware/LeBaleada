json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :latitude, :longitude, :map_icon
  json.url restaurant_url(restaurant, format: :json)
end
