class SessionController < ApplicationController
  def callback
    if response = env["omniauth.auth"]
      user = FacebookUser.find_by_facebook_id(env["omniauth.auth"].uid)
      if user.nil?
        user = FacebookUser.new do |user|
          omniauth = env["omniauth.auth"]
          
          user.facebook_id = omniauth.uid
          user.credentials = omniauth.credentials.token

          user.email = omniauth.info.email
          user.nickname = omniauth.info.nickname
          user.given_name = omniauth.info.first_name
          user.family_name = omniauth.info.last_name
          user.location = omniauth.info.location
        end
        
        user.save
      else
        
      end
      
      session[:uid] = user.facebook_id
      flash[:notice] = 'Logged in successfully with facebook'
    else
      flash[:notice] = 'Logged in unsuccessfully with facebook'
    end
    redirect_to root_path
  end
  
  def logout
    session.delete :uid
    redirect_to root_path
  end
end