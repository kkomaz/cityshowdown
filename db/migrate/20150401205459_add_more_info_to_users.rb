class AddMoreInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bio, :string
    add_column :users, :website, :string
    add_column :users, :name, :string
  end
end
