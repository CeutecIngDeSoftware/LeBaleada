class CreateRestaurantReviews < ActiveRecord::Migration
  def change
    create_table :restaurant_reviews do |t|
      t.integer :parking
      t.integer :service
      t.integer :hygiene
      t.text :comment
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
