class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :value, :post_id, :user_id

end
