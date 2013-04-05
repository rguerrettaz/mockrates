class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
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
    cookies.delete(:id)
    redirect_to root_url
  end


  def update
  end

  def edit

  end

end
