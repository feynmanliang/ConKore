class Trick < ActiveRecord::Base
  attr_accessible :title, :description, :location_id, :user_id, :video_link
  belongs_to :user
  belongs_to :location

  validates_presence_of :title, :location_id, :user_id, :video_link

  default_scope order: 'tricks.created_at DESC'

  def youtube_thumbnail
    youtube_id = extract_youtube_id(self.video_link)

    %Q{http://img.youtube.com/vi/#{ youtube_id }.jpg}
  end

  def youtube_video
    youtube_id = extract_youtube_id(self.video_link)

    %Q{http://www.youtube.com/embed/#{ youtube_id }}
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
