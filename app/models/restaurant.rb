class Restaurant < ActiveRecord::Base
  has_many :restaurant_reviews
  has_many :foods
end
