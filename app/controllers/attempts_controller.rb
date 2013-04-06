class AttemptsController < ApplicationController
require 'debugger'
  def create
    @challenge = Challenge.find(params[:id])
    @github = Github.new oauth_token: current_user.oauth_token, client_id: ENV['GITHUB_KEY'], client_secret: ENV['GITHUB_SECRET']
    gist = @github.gists.create( description: @challenge.title, public: false, files: { "#{@challenge.title}.rb".to_sym => { content: "Created at: #{Time.now}" } })
    @attempt = Attempt.new(challenge_id: params[:id])
    @attempt.user = current_user
    @attempt.github_url = gist.html_url
    @attempt.save     
  end

  def update
    p "$$$$$$$$$$$$ this is your params: #{params}"
    @attempt = Attempt.find(params[:id])
    @attempt.update_attributes(params[:attempt])
    @attempt.update_attributes(status: 'submitted')
  end

end


