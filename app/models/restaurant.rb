class Restaurant < ActiveRecord::Base
  has_many :restaurant_reviews
  has_many :foods
  
  mount_uploader :map_icon, FileUploader
end
