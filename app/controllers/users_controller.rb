class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in(@user)
      @user
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
