class AddProOrConToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pro_or_con, :integer
  end
end
