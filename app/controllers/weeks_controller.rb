class WeeksController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :current_user,   only: [:edit, :update]
  before_filter :admin_user, only: :destroy

  def show
    @challenges = Challenge.all
    @weeks = Week.all
    @week = Week.first
    if current_user
      current_user
      user1_submittles
    end
    if current_user_2
      current_user_2
      user2_submittles
    end
  end

  private

 


end
