class User < ActiveRecord::Base
  has_many :food_reviews
  has_many :restaurant_reviews
end
