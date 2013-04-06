class SessionsController < ApplicationController
  require 'debugger'
  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      return redirect_to root_path, :notice => "You have logged in" if @user == active_user
      sign_in(@user)
      redirect_to @user
    else
      flash.now.alert = "Invalid email or password"
      render 'new'   
    end
  end

  def index
    
  end

  def show
    
  end

  def destroy
    cookies.delete(:id) if params[:id] == cookies[:id]
    cookies.delete(:id2) if params[:id] == cookies[:id2]
    redirect_to root_url
  end


  def update
  end

  def edit

  end

end
