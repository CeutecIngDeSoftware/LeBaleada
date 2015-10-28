json.array!(@restaurant_reviews) do |restaurant_review|
  json.extract! restaurant_review, :id, :parking, :service, :hygiene, :comment, :user_id, :restaurant_id
  json.url restaurant_review_url(restaurant_review, format: :json)
end
