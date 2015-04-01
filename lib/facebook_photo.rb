require 'open-uri'

class FacebookPhoto

  attr_accessor :user

  def initialize(user)
    @user = user
  end
# ASK ROSE: should this file be in lib? or in models folder?

  def get_photos
    facebook_id = @user.uid
    photo_json_url = "https://graph.facebook.com/v2.3/#{facebook_id}/photos"
    photo_json = JSON.load(open(photo_json_url))
  end

  # what we need in order for this to work is 
    # 1) add user_photo to omniauth.rb scope
    # 2) make sure we have proper access token saved in our program so that we can put through an api request such as the one above.

end