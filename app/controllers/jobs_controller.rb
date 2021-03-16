class JobsController < ApplicationController

    def new
      @jobs = Job.new
    end

    def create
      @jobs = Job.new(job_params)
      if @jobs.save
        redirect_to jobs_path(@jobs)
      else
        render :new
      end
    end

    def index
      @jobs = Job.all
    end

    def show
      @jobs = Job.find(params[:id])
    end

    def edit
      @jobs = Job.find(params[:id])
    end

    def update
      @jobs = Job.find(params[:id])
      @jobs.update(job_params)
      redirect_to job_path(@jobs)
    end

private
  def job_params
    params.require(:job).permit(:date, :duration, :sitter_id, :guardian_id, :num_of_kids)
  end

end
