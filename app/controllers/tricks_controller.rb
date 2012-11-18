class TricksController < ApplicationController
  def index
    @tricks = Trick.first(6).sort_by(&:rating).reverse

    respond_to do |format|
      format.html
      format.json { render json: @tricks }
    end
  end

  def show
    @trick = Trick.find(params[:id])
    @comments = @trick.trick_comments

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
        format.html { redirect_to location_trick_path(@location, @trick), notice: 'Trick was successfully created.' }
        format.json { render json: @trick, status: :created, location: @trick}
      else
        format.html { render action: "new" }
        format.json { render json: @trick.errors, status: :unprocessable_entity }
      end
    end
  end

  def post_fb
      trick = Trick.find(params[:trick_id])
      user = FbGraph::User.new('me', :access_token => session[:token])
      user.feed!(
        :message => 'Check out my latest trick!',
        :picture => trick.youtube_thumbnail,
        :link => request.referer,
        :name => trick.title,
        :description => trick.description
      ) 
      redirect_to location_trick_path(trick.location, trick), :notice => 'Posted to Facebook wall!'
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
