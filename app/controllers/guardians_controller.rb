class GuardiansController < ApplicationController

    def new
      @guardians = Guardian.new
    end

    def create
      @guardians = Guardian.new(guardian_parmas)
    end

    def index
      @guardians = Guardian.all
    end

    def show
      @guardians = Guardian.find(params[:id])
    end

end
