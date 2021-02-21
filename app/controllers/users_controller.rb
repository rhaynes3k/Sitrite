class UsersController < ApplicationController

  def new
    @users = User.new
  end

  def create
    @users = User.new(user_params)
  end

  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

end
