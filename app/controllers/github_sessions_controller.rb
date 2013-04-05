class GithubSessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    @user = User.find(session[:user_id])
    @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    if @authorization
      @github = Github.new oauth_token: auth_hash.credentials.token, client_id: "036b84b3d20917be47f6", client_secret: "aef7f50fb7df4a31ab394d07f16c7cdb079cd8f7"
      session[:token] = auth_hash.credentials.token
      redirect_to @user
    else
      user.oauth_token = auth_hash.credentials.token
      user.uid = auth_hash["uid"]
      user.save!
      redirect_to @user
    end
  end
end
