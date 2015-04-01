require 'open-uri'

class Instagram

  attr_accessor :api_call, :photos_json

  def initialize(user_id, access_token)
    @api_call = "https://api.instagram.com/v1/users/#{user_id}/media/recent/?access_token=#{access_token}"
    open_url
  end

  def open_url
    @photos_json = JSON.load(open(@api_call))["data"]
  end

end