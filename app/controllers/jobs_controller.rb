class JobsController < ApplicationController
  def index
    @jobs = Jobs.all
    render 'jobs/index'
  end

  def create
    @job = job.new(job_params)

    if @job.save
      render 'jobs/create'
    end
  end

  def show
    @job = Job.find_by(id: params[:id])
    render'jobs/show'
  end

  private
    def job_params
      params.require(:job).permit(:job_title)
    end
end
