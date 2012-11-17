class Location < ActiveRecord::Base
  attr_accessible :description, :lat, :long, :title

  validate :title, :presence => true
  validate :lat, :long, { :presence => true, :numericality => true }

  default_scope order: 'locations.created_at DESC'
end
