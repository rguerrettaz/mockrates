class GithubSessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    session[:token] = auth_hash.credentials.token
    current_user.oauth_token = auth_hash.credentials.token
    current_user.uid = auth_hash["uid"]
    current_user.save(validate: false)
    redirect_to current_user
  end
end
