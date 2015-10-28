class CreateFollowUsers < ActiveRecord::Migration
  def change
    create_table :follow_users do |t|
      t.integer :follower_id
      t.integer :following_id

      t.timestamps null: false
    end
  end
end
