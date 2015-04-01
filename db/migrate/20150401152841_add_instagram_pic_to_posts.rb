class AddInstagramPicToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :instagram_pic, :string
  end
end
