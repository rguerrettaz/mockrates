class ChallengesController < ApplicationController

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(params[:challenge])
    if @challenge.save
      redirect_to @challenge
    else
      render :new
    end
  end

  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
    @markdown = MARKDOWN.render(@challenge.content)
  end

  def destroy
  end

  def update
  end

  def edit
  end

end
