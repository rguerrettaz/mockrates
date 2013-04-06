class ApplicationController < ActionController::Base
  protect_from_forgery

 def sign_in(user)
    if cookies[:id]
      cookies[:id2] = user.id
    else
      cookies[:id] = user.id
    end
  end

  def current_user_2
    @current_user_2 ||= User.find(cookies[:id2]) if cookies[:id2]
  end

  def current_user
    @current_user ||= User.find(cookies[:id]) if cookies[:id]
  end

  def pair_users?
    current_user_2 && current_user
  end
  def active_user
    @active_user = current_user || current_user_2
  end



  helper_method :current_user, :current_user_2, :pair_users?, :active_user

end
