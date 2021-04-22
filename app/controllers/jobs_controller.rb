class JobsController < ApplicationController

  def new
    if params[:user_id] && !User.exists?(params[:user_id])
      redirect_to users_path
    else
      @job = Job.new(user_id: params[:user_id])
    end
  end

    def create
      @job = Job.new(job_params)
      if @job.save
        redirect_to user_jobs_path(@job)
      else
        render :new
      end
    end

    def index
      if params[:user_id]
        @user = User.find_by(id: params[:user_id])
        @jobs = @user.jobs.find_by(id: params[:id])
        binding.pry
        
        if @user.nil?
          redirect_to job_path(@jobs)

        end
      else
        @jobs = Job.all
      end
    end

    def show
      if params[:user_id]
        @user = User.find_by(id: params[:user_id])
        @job = @user.jobs.find_by(id: params[:id])
      else
        @job = Job.find(params[:id])
        # binding.pry
      end
    end

    def edit
      @job = Job.find(params[:id])
    end

    def update
      @job = Job.find(params[:id])
      @job.update(job_params)
      redirect_to job_path(@job)
    end

private
  def job_params
    params.require(:job).permit(:date, :duration, :sitter_id, :guardian_id, :num_of_kids, :user_id)
  end

end
