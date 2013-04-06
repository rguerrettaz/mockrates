class ChallengesController < ApplicationController
  before_filter :signed_in_user, only: [:show, :index]
  # before_filter :current_user,   only: [:show, :index]
  before_filter :admin_user, only: [:new]

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

  def show
    @challenge = Challenge.find(params[:id])
    @markdown = MARKDOWN.render(@challenge.content)
  end


  def index
    @challenges = Challenge.all
  end

  
  def destroy
  end

  def update
  end

  def edit
  end

end
