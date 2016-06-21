class JobsController < ApplicationController

  def new
  	@job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to new_job_path
      flash[:success] = "新しい求人が作成されました"
    else
      render 'new'
    end
  end

  def index
    @jobs = Job.all
  end

   def show
    @job = Job.find(params[:id])
   end

  private

    def job_params
      params.require(:job).permit(:client_id, :shop_id, :recommend_point,
                                   :search_list_photo, :top_photo, :title, :prefecture_id, :city,
                                   :salary, :message)
    end

    def user_logged_in?
    session[:user].present?
  end
  
end
