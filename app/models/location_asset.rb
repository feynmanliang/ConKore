class LocationAsset < ActiveRecord::Base
  attr_accessible :location_id, :url
  belongs_to :location

  validates_presence_of :location_id, :url
end
