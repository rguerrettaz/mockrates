


class AttemptsController < ApplicationController

  def create
    if interactive
      @attempt = create
    else 
    @challenge = Challenge.find(params[:id])
    @github = Github.new oauth_token: current_user.oauth_token, client_id: ENV['GITHUB_KEY'], client_secret: ENV['GITHUB_SECRET']
    gist = @github.gists.create( description: @challenge.title, public: false, files: { "#{@challenge.title}.rb".to_sym => { content: "Created at: #{Time.now}" } })
    if current_user
      @attempt = Attempt.new(challenge_id: params[:id], user_id: current_user.id)
      @attempt.github_url = gist.html_url
      @attempt.save     
    end
    if current_user_2
      @attempt2 = Attempt.new(challenge_id: params[:id], user_id: current_user_2.id)
      @attempt2.github_url = gist.html_url
      @attempt2.save
    end   
  end

  def update
    @attempt = Attempt.find(params[:id])
    @attempt.update_attributes(params[:attempt])
    @attempt.update_attributes(status: 'submitted')
  end


end


