class LocationAsset < ActiveRecord::Base
  attr_accessible :location_id, :picture
  belongs_to :location
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
