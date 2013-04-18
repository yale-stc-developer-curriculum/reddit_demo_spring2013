class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes
  attr_accessible :description, :link, :title, :user_id

  def vote_count
    votes.sum(:value)
  end

end
