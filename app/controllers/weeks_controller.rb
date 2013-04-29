class WeeksController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :current_user,   only: [:edit, :update]
  before_filter :admin_user, only: :destroy

  def show
    @week = Week.find(params[:id])
    @challenges = @week.challenges
    @weeks = Week.all
    
    if current_user
      user1_submittles
    end

    if current_user_2
      user2_submittles
    end

  end
end
