json.array!(@food_reviews) do |food_review|
  json.extract! food_review, :id, :food_id, :real_pic, :price, :taste, :quantity, :comment, :restaurant_id
  json.url food_review_url(food_review, format: :json)
end
