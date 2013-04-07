class WeeksController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :current_user,   only: [:edit, :update]
  before_filter :admin_user, only: :destroy

  def show
    @weeks = Week.all
    @week = Week.find(params[:id])
  end

  private

 


end
