module ApplicationHelper
  def logged_in?
    return !session[:uid].nil?
  end
  
  def tiny_fb_image(user)
    image_tag "https://graph.facebook.com/#{user.nickname}/picture?type=square", :class => 'tiny_fb_image'
  end
end
