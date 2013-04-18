class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes

  attr_accessible :name, :email, :netid

  validates :netid, uniqueness: true, presence: true

end