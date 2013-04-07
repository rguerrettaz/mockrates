class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :current_user,   only: [:edit, :update]
  before_filter :admin_user, only: :destroy

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in(@user)
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end 
  end

  def index
    
  end

  def show
    id = params[:id] || current_user.id || current_user_2.id
    @user = User.find(id)
  end

  def destroy
    
  end

  def update

  end

  def edit

  end

  private

 


end
