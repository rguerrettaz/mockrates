class ChallengesController < ApplicationController
  before_filter :signed_in_user, only: [:show, :index]
  before_filter :admin_user, only: [:new]
  include Interactive
  
  def new
    @challenge = Challenge.new
    @phases = Phase.all
    @weeks = Week.all
  end

  def create
    week= Week.find(params[:challenge][:week_id])
    @challenge = Challenge.new(title: params[:challenge][:title],
                               content: params[:challenge][:content],
                               interactive: params[:challenge][:interactive],
                               week_id: week.id,
                               phase_id: week.phase_id)
    if @challenge.save
    create_specs(params[:challenge][:specs_attributes]["0"][:content], @challenge.id) if params[:challenge][:specs_attributes]["0"][:content]
    redirect_to challenges_path
    else
      render :new
    end
  end

  def show
    @challenge = Challenge.find(params[:id])
    redirect_to challenges_interactive_path if @challenge.interactive
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

   def interactive
    @challenge = Challenge.find(params[:id])
    return unless params[:code]
    result = result?(params[:code], @challenge.specs)
    if result == "You are correct"
      if current_user && !(InteractiveAttempt.find_by_code_and_user_id(params[:code], current_user.id))
        @challenge.interactive_attempts.build(code: params[:code], user_id: current_user.id ).save
      end
      if current_user_2 && !(InteractiveAttempt.find_by_code_and_user_id(params[:code], current_user_2.id))
        @challenge.interactive_attempts.build(code: params[:code], user_id: current_user_2.id ).save
      end
    end
    result
  end

end














