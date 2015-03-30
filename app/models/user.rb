class User < ActiveRecord::Base
  belongs_to :city
  has_many :posts
  has_many :comments
end