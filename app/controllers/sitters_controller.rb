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

private

  def sitter_params
    params.require(:sitter).permit(:name, :age, :zip, :email, :reviews, :phone)
  end

end
