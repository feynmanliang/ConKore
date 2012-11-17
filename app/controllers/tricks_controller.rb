class TricksController < ApplicationController
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

  private

  def youtube_embed
    youtube_id = extract_youtube_id(self.video_link)

    %Q{<iframe title="YouTube video player" width="640" height="390" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
  end

  def youtube_thumnail
    youtube_id = extract_youtube_id(self.video_link)

    image_tag "http://img.youtube.com/vi/#{ youtube_id }.jpg"
  end

  def extract_youtube_id(youtube_url)
    if youtube_url[/youtu\.be\/([^\?]*)/]
      $1
    else
      # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
      youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      $5
    end
  end
end
