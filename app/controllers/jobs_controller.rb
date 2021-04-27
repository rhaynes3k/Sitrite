class JobsController < ApplicationController

  before_action :find, only: [:edit, :update, :destroy]
  # before_action :correct_user, only: [:create, :new, :show]


  def new
    if params[:user_id] && User.exists?(params[:user_id]) && current_user.id.to_s == params[:user_id]
      @job = Job.new(user_id: params[:user_id])
    else
      redirect_to users_path
    end
  end

    def create
      @job = Job.new(job_params)
      if @job.save
        redirect_to jobs_path(@job)
      else
        render :new
      end
    end

    def index
      # if params[:user_id]
      #   @user = User.find_by(id: params[:user_id])
      #   if @user.nil?
          @jobs = Job.all
      #   else
      #     @jobs = @user.jobs.find_by(id: params[:id])
      #   end
      # end
    end

    def show
      @job = Job.find_by(id: params[:id])
    end


    def edit
    end

    def update
      @job.update(job_params)
      redirect_to job_path(@job)
    end

    def destroy
      @job.destroy
      redirect_to jobs_path
    end

private

  def find
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:date, :duration, :sitter_id, :guardian_id, :num_of_kids, :user_id)
  end

end
