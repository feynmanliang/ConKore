class LocationComment < ActiveRecord::Base
  attr_accessible :body, :rating, :user_id, :location_id
  belongs_to :location
  belongs_to :user
end
