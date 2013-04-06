class SessionsController < ApplicationController
  require 'debugger'
  before_filter :login_required, :except => [:new, :create]
  def new
    render :new, :layout => false
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      return redirect_to root_path, :notice => "You have logged in" if @user == active_user
      sign_in(@user)
      redirect_to @user
    else
      flash[:notice] = "Invalid email or password"
      redirect_to :back   
    end
  end

  def index
    
  end

  def show
    
  end

  def destroy
    cookies.delete(:id) if params[:id] == cookies[:id]
    cookies.delete(:id2) if params[:id] == cookies[:id2]
    if active_user
      redirect_to active_user
    else
      redirect_to root_url
    end
  end


  def update
  end

  def edit

  end

end
