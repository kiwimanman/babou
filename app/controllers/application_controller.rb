class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :initialize_user
  
  private
  
  def initialize_user
    @user = FacebookUser.find_by_facebook_id(session[:uid])
  end
end
