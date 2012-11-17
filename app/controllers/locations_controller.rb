class LocationsController < ApplicationController
  respond_to :html, :xml, :json
  validate_presence_of :title, :lat, :long

  def index
    @locations = Location.all

    respond_with(@locations)
  end

  def show

  end

  def new
    @location = Location.new

    respond_with(@location)
  end

  def create

  end

  def update

  end

  def destroy

  end
end
