class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :login_required

  def sign_in(user)
    if cookies[:id]
      cookies[:id_2] = user.id
    else
      cookies[:id] = user.id
    end
  end

  def pair_users?
    current_user_2 && current_user
  end

  def current_user_2
    @current_user_2 ||= User.find(cookies[:id_2]) if cookies[:id_2]
  end

  def current_user
    @current_user ||= User.find(cookies[:id]) if cookies[:id]
  end

  def current_user?(user)
    user == current_user || user == current_user_2
  end

  def admin_user
    if current_user_2
      unless current_user_2.admin
        redirect_to current_user_2
      end
    elsif current_user
      unless current_user.admin
        redirect_to current_user
      end
    end
  end

  def create_specs(content, challenge_id)
    specs = content.split("\r\n")
    specs.each do |spec|
      Spec.create(content: spec, challenge_id: challenge_id)
    end
  end

  def login_required
    p cookies[:id]
    p cookies[:id_2]
    unless cookies[:id] || cookies[:id_2]
      redirect_to login_path
    end
  end

  def signed_in_user
    redirect_to signin_url, notice: "please sign in." unless cookies[:id] || cookies[:id_2]
  end

  def active_user
    @active_user = current_user || current_user_2
  end

  def user1_submittles
    @user1_submitted = []
    current_user.attempts.each do |attempt|
      @user1_submitted << attempt.challenge_id
    end
    @user1_submitted
  end

  def user2_submittles
    @user2_submitted = []
    current_user_2.attempts.each do |attempt|
      @user2_submitted << attempt.challenge_id
    end
    @user2_submitted
  end




  helper_method :current_user, :current_user_2, :pair_users?, :active_user, :admin_user

end
