


class AttemptsController < ApplicationController

  def create
    @challenge = Challenge.find(params[:id])
    @github = Github.new oauth_token: current_user.oauth_token, client_id: ENV['GITHUB_KEY'], client_secret: ENV['GITHUB_SECRET']
    gist = @github.gists.create( description: @challenge.title, public: false, files: { "#{@challenge.title}.rb".to_sym => { content: "Created at: #{Time.now}" } })
    @attempt = Attempt.new(challenge_id: params[:id])
    @attempt.github_url = gist.html_url
    @attempt.user = current_user
    @attempt.save     
    @attempt2 = Attempt.new(challenge_id: params[:id])
    @attempt2.user =  current_user_2
    @attempt2.github_url = gist.html_url
    @attempt2.save   
  end

  def update
    @attempt = Attempt.find(params[:id])
    @attempt.update_attributes(params[:attempt])
    @attempt.update_attributes(status: 'submitted')
  end


end


