class JobsController < ApplicationController

    def new
      @jobs = Job.new
    end

    def create
      @job = Job.new(job_params)
      if @job.save
        redirect_to job_path(@job)
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

private
  def job_params
    params.require(:job).permit(:date, :duration, :sitter_id, :guardian_id, :num_of_kids)
  end

end
