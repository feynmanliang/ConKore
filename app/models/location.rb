class Location < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :lat, :long
  validates_numericality_of :lat, :long

  attr_accessible :description, :lat, :long, :title

  default_scope order: 'locations.created_at DESC'
end
