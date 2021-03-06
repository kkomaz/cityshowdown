class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  has_many :comments, :dependent => :destroy
  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :category
  validates :tagline, presence: true
  acts_as_votable
  validates :pro_or_con, presence: true
end
