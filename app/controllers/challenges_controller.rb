
  module Interactive
    require 'ruby_cop'
    require 'rspec/autorun'
    def result?(code, specs)
      policy = RubyCop::Policy.new
      ast = RubyCop::NodeBuilder.build(code)
      return @result = "wrong please try again" unless ast || code
      begin 
        eval(code)
      rescue Exception => exc 
        return @result = "Wrong please try again"
      end
      results = specs.map do | spec|
        eval(spec.content)
      end
      @result = results.include?(false) ? "Wrong please try again" : "You are correct"
    end
  end

class ChallengesController < ApplicationController
  before_filter :signed_in_user, only: [:show, :index]
  before_filter :admin_user, only: [:new]
  include Interactive
  
  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(title: params[:challenge][:title],
                               content: params[:challenge][:content],
                               interactive: params[:challenge][:interactive])
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














