module PhotosHelper
  
  def photos_array(photos)
    @photos.photos_json[0...25].collect do |photo|
    photo_url = photo["images"]["standard_resolution"]["url"]
    [photo_url, photo_url]
    end
  end
end

