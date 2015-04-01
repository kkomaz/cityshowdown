class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :image
      t.string :oauth_token
    end
  end
end
