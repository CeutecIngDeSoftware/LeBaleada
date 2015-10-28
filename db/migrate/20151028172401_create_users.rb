class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :username
      t.string :realname
      t.text :bio

      t.timestamps null: false
    end
  end
end
