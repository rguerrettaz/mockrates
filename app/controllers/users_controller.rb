class UsersController < ApplicationController

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

end
