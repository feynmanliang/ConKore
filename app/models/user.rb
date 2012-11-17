class User < ActiveRecord::Base
  attr_accessible :provider, :uid, :name, :email
  has_many :tricks, :dependent => :nullify
  has_many :trick_comments, :dependent => :nullify
  has_many :location_comments, :dependent => :nullify

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
      end
    end
  end

end
