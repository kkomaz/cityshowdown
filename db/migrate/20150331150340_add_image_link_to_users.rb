class AddImageLinkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :link, :string
  end
end
