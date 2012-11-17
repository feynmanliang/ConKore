class Location < ActiveRecord::Base
  attr_accessible :description, :lat, :long, :title
end
