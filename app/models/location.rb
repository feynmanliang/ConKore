class Location < ActiveRecord::Base
  attr_accessible :description, :lat, :long, :title
  has_many :tricks

  validates_presence_of :title
  validates_presence_of :lat, :long
  validates_numericality_of :lat, :long

  default_scope order: 'locations.created_at DESC'
end
