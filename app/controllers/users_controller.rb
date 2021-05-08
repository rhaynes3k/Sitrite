class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :sign_up]
  before_action :find, only: [:show, :edit, :update, :destroy]
  # before_action :current_user
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
      #binding.pry

    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
  end

  def edit
    if @user.id != current_user.id
      redirect_to users_path
    end
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def login
    render 'login'
  end

  def home
    render 'home'
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

private

  def find
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :username, :password)
  end

end
