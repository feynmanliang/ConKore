class TricksController < ApplicationController
  def index
    @tricks = Tricks.all

    respond_to do |format|
      format.html
      format.json { render json: @tricks}
    end
  end

  def show
    @trick = Location.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @trick }
    end
  end

  def new
    @trick = Location.new

    respond_to do |format|
      format.html
      format.json { render json: @trick }
    end
  end

  def create
    @trick = Location.new(params[:tricks])

    respond_to do |format|
      if @trick.valid? && @trick.save
        format.html { redirect_to @trick, notice: 'Trick was successfully created.' }
        format.json { render json: @trick , status: :created, location: @trick}
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
