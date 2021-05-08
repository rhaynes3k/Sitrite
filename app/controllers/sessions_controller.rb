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
    redirect_to '/login'
  end

  def welcome
    render 'welcome.index'
  end

  # def page_requires_login
  #   redirect_to '/login'
  # end

  def omniauth
    #binding.pry
    #provider = auth['provider']
    #name = auth['info']['name']
    user = User.create_from_omniauth(auth)

    if user.valid?
      session[:user_id] = user.id
      redirect_to new_job_path
    else
      flash[:message] = user.errors.full_messages.join("")
      redirect_to jobs_path
    end
  end

private

  def auth
    request.env['omniauth.auth']
  end

end
