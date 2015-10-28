class CreateFoodReviews < ActiveRecord::Migration
  def change
    create_table :food_reviews do |t|
      t.integer :food_id
      t.string :real_pic
      t.integer :price
      t.integer :taste
      t.integer :quantity
      t.text :comment
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
