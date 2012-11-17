class Trick < ActiveRecord::Base
  attr_accessible :description, :location_id, :title
  belongs_to :location

  validates_presence_of :title
  validates_presence_of :location_id

  default_scope order: 'tricks.created_at DESC'
end
