class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :tagline
      t.string :description
      t.string :image
      t.integer :user_id
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
