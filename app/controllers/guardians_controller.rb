class GuardiansController < ApplicationController

    def new
      @guardians = Guardian.new
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
      @guardians = Guardian.all
    end

    def show
      @guardians = Guardian.find(params[:id])
    end

    def edit
      @guardians = Guardian.find(params[:id])
    end

    def update
      @guardians = Guardian.find(params[:id])
      @guardians.update(guardian_params)
      redirect_to guardian_path(@guardians)
    end

private
  def guardian_params
    params.require(:guardian).permit(:name, :email, :num_kids, :st_addr_1, :st_addr_2, :city, :state, :zip, :ph_num)
  end

end
