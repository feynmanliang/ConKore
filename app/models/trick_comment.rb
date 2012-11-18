class TrickComment < ActiveRecord::Base
  attr_accessible :body, :rating, :trick_id, :user_id
  belongs_to :trick
  belongs_to :user


  default_scope order: 'trick_comments.created_at DESC'
end
