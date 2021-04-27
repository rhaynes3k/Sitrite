class SittersController < ApplicationController

  def new
    if params[:user_id] && !User.exists?(params[:user_id])
      redirect_to users_path
    else
      @sitter = Sitter.new(user_id: params[:user_id])
    end
  end

    def create
      @sitter = Sitter.create(sitter_params)
      if @sitter.save
        redirect_to sitter_path(@sitter)
      else
        render :new
      end
    end

    def index
      if params[:user_id]
        @user = User.find_by(id: params[:user_id])
        @sitters = @user.sitters
      else
        @sitters = Sitter.all
      end

      @busiest_sitter = Job.busiest_sitter

    end

    def show
      if params[:user_id]
        @user = User.find_by(id: params[:user_id])
        @sitter = @user.sitters.find_by(id: params[:id])
      else
        @sitter = Sitter.find(params[:id])
        # binding.pry
      end
    end

    def edit
      @sitters = Sitter.find(params[:id])
    end

    def update
      @sitters = Sitter.find(params[:id])
      @sitters.update(sitter_params)
      redirect_to sitter_path(@sitters)
    end

    def destroy
      @sitters = Sitter.find(params[:id])
      @sitters.destroy
      redirect_to sitter_path
    end

private

  def sitter_params
    params.require(:sitter).permit(:name, :age, :zip, :email, :ph_num, :user_id)
  end

end
