class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :map_icon

      t.timestamps null: false
    end
  end
end
