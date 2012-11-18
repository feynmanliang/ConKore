class Location < ActiveRecord::Base
  attr_accessible :description, :lat, :long, :title, :image_url
  has_many :tricks, :dependent => :destroy
  has_many :location_comments, :dependent => :destroy

  validates_presence_of :title, :lat, :long, :image_url
  validates_numericality_of :lat, :long

  default_scope order: 'locations.created_at DESC'
end
