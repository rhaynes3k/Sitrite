class SittersController < ApplicationController

    def new
      @sitters = Sitter.new
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
      @sitters = Sitter.all
    end

    def show
      @sitters = Sitter.find(params[:id])
    end

    def edit
      @sitters = Sitter.find(params[:id])
    end

    def update
      @sitters = Sitter.find(params[:id])
      @sitters.update(sitter_params)
      redirect_to sitter_path(@sitters)
    end

private

  def sitter_params
    params.require(:sitter).permit(:name, :age, :zip, :email, :ph_num)
  end

end
