class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome, :omniauth, :sign_up]

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to '/login'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  def welcome
    render 'home'
  end

  def omniauth
    #binding.pry
    #provider = auth['provider']
    #name = auth['info']['name']
    user = User.create_from_omniauth(auth)
    #binding.pry

    if user.valid?
      session[:user_id] = user.id
      redirect_to users_path
    else
      flash[:message] = user.errors.full_messages.join("")
      redirect_to root_path
    end
  end

private

  def auth
    request.env['omniauth.auth']
  end

end
