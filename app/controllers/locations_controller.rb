class LocationsController < ApplicationController
  def index
    @locations = Location.all

    respond_to do |format|
      format.html
      format.json { render json: @locations }
    end
  end

  def show
    @location = Location.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @location }
    end
  end

  def new
    @location = Location.new

    respond_to do |format|
      format.html
      format.json { render json: @locations }
    end
  end

  def create
    @location = Location.new(params[:location])

    respond_to do |format|
      if @location.valid? && @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render json: @location, status: :created, location: @location }
      else
        format.html { render action: "new" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
