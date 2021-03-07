class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :sign_up]


  def new
    @users = User.new
  end

  def create
    @users = User.new(user_params)
    if @users.save
      session[:user_id] = @user.id
      redirect_to user_path(@users)
      #binding.pry

    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def edit
    @users = User.find(params[:id])
  end

  def update
    @users = User.find(params[:id])
    @users.update(user_params)
    redirect_to user_path(@users)
  end

  def login
    render 'login'
  end

  def home
    render 'home'
  end

  def delete
    @users = User.find(params[:id])
    @users.destroy
    redirect_to users_path
  end



private

  def user_params
    params.require(:user).permit(:name, :email, :username, :password)
  end

end
