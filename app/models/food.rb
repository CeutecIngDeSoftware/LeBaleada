class Food < ActiveRecord::Base
  has_many :food_reviews
  belongs_to :restaurant
end
