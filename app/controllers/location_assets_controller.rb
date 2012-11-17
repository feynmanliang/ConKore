class LocationAssetsController < ApplicationController
  def new
    @location = Location.find(params[:location_id])
    @location_asset = @location.location_assets.new
  end
end
