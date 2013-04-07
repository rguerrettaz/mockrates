module GithubSessionsHelper

  def client(token)
    @github = Github.new oauth_token: token, client_id: ENV['GITHUB_KEY'], client_secret: ENV['GITHUB_SECRET']
  end


end


 
