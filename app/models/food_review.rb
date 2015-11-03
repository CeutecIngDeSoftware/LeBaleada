class FoodReview < ActiveRecord::Base
  belongs_to :user

  mount_uploader :real_pic, FileUploader
end
