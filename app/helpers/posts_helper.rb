module PostsHelper

  def image_check(post)
    if post.image_file_name != nil
      link_to (image_tag post.image.url, :width => '100%'), city_post_path(post.city, post) if post.image
    elsif post.instagram_pic
      link_to (image_tag post.instagram_pic, :width => '100%'), city_post_path(post.city, post) if post.instagram_pic
    else
      link_to image_tag("images.jpeg", :width => '100%'), city_post_path(post.city, post)
    end
  end
  
end
