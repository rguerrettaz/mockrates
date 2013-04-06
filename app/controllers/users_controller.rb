class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user, only: :destroy

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in(@user)
      session[:user_id] = @user.id
      redirect_to new_github_session_path
    else
      render :new
    end 
  end

  def index
    
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    
  end

  def update

  end

  def edit

  end

  private

 


end
