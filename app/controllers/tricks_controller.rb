class TricksController < ApplicationController
  helper_method :youtube_thumbnail, :youtube_embed
  def show
    @trick = Trick.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @trick }
    end
  end

  def new
    @location = Location.find(params[:location_id])
    @trick = Trick.new
    @trick.user_id = session[:user_id]

    respond_to do |format|
      format.html
      format.json { render json: @trick }
    end
  end

  def create
    @location = Location.find(params[:location_id])
    @trick = @location.tricks.new(params[:trick])
    @trick.user_id = session[:user_id]

    respond_to do |format|
      if @trick.save
        format.html { redirect_to @location, notice: 'Trick was successfully created.' }
        format.json { render json: @trick, status: :created, location: @trick}
      else
        format.html { render action: "new" }
        format.json { render json: @trick.errors, status: :unprocessable_entity }
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
