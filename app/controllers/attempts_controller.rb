class AttemptsController < ApplicationController

  def create
    # call github for repo
    p params
    puts '*' * 30
    @attempt = Attempt.new(challenge_id: params[:id])
    @attempt.user = current_user
    # @attempt.github_url = github response
    @attempt.save  
    redirect_to :back
  end

  def update
    @attempt = Attempt.find(params[:attempt][:id])
    @attempt.update(status: 'submitted', github_url: params[:attempt][:url])
    redirect_to :back
  end

end
