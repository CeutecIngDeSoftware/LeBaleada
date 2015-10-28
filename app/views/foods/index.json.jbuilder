json.array!(@foods) do |food|
  json.extract! food, :id, :name, :promo_pic, :restaurant_id
  json.url food_url(food, format: :json)
end
