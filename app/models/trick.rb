class Trick < ActiveRecord::Base
  attr_accessible :title, :description, :location_id, :user_id
  belongs_to :user
  belongs_to :location

  validates_presence_of :title, :location_id, :user_id

  default_scope order: 'tricks.created_at DESC'
end
