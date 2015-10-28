json.array!(@follow_restaurants) do |follow_restaurant|
  json.extract! follow_restaurant, :id, :user_id, :restaurant_id
  json.url follow_restaurant_url(follow_restaurant, format: :json)
end
