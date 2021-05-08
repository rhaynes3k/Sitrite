class GuardiansController < ApplicationController

  before_action :find, only: [:show, :edit, :update, :destroy]


  def new
    if params[:user_id] && !User.exists?(params[:user_id])
      redirect_to users_path
    else
      @guardian = Guardian.new(user_id: params[:user_id])
    end
  end

    def create
      @guardian = Guardian.new(guardian_params)
      #binding.pry
      if @guardian.save
        redirect_to guardian_path(@guardian)
      else
        render :new
      end
      #binding.pry
    end

    def index
      if params[:user_id]
        @user = User.find_by(id: params[:user_id])
        @guardians = @user.guardians
      else
        @guardians = Guardian.all
      end
    end

    def show
    end

    def edit
    end

    def update
      @guardians.update(guardian_params)
      redirect_to guardian_path(@guardians)
    end

    def delete
      @guardians.destroy
      redirect_to '/guardians'
    end

private

  def find
    @guardian = Guardian.find(params[:id])
  end

  def guardian_params
    params.require(:guardian).permit(:name, :email, :num_kids, :st_addr_1, :st_addr_2, :city, :state, :zip, :ph_num, :user_id)
  end

end
