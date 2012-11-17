class TrickComment < ActiveRecord::Base
  attr_accessible :body, :rating, :trick_id, :user_id
end
