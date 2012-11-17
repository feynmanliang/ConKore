class LocationComment < ActiveRecord::Base
  attr_accessible :body, :rating
  belongs_to :location
end
