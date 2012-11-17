class Trick < ActiveRecord::Base
  attr_accessible :title, :description, :location_id, :user_id, :video_link
  belongs_to :user
  belongs_to :location

  validates_presence_of :title, :location_id, :user_id, :video_link

  default_scope order: 'tricks.created_at DESC'
end
