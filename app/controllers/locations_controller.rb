class LocationsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @locations = Location.all
    respond_with(@locations)
  end
end
