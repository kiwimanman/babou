module ApplicationHelper
  def logged_in?
    return !session[:uid].nil?
  end
end
