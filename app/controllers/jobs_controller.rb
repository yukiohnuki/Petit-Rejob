class JobsController < ApplicationController

  def new
  	@job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save!
      redirect_to new_job_path
      flash[:success] = "新しい求人が作成されました"
    else
      redirect_to "/admin_top"
    end
  end

  def index
    @jobs = Job.all
    @job = Job.new
  end

   

  def search
    
    @job = Job.new
    @jobs = Job.where(prefecture_params)
    #@jobs = @jobs.joins(:job_types).where(job_types_params)
    #fail
  end

  def show
    @job = Job.find(params[:id])
  end

  private

    def prefecture_params
      params.require(:job).permit(
         :prefecture_id,
         )
    end

    def job_types_params
      params.require(:job).permit(
         job_types:[],
         )
      #fail
    end



    def job_params
      params.require(:job).permit(
        :client_id,
        :shop_id,
        :recommend_point,
        :search_list_photo,
        :top_photo,
        :title,
        :prefecture_id,
        :city,
        :salary,
        :message,
        :search_list_photo,
      )
    end

    def user_logged_in?
    session[:user].present?
  end
  
end
