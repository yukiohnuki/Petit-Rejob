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
    # fail

    @job = Job.new
    if params[:job][:prefecture_id].present?
      @jobs = Job.where(prefecture_params)
      @prefecture = Prefecture.find(params[:job][:prefecture_id])
    else
      @jobs = Job.all
    end

    if params[:job][:job_types_id].present?
      @jobs = @jobs.search_job_types(job_types_params)
    end

    @jobs = @jobs.uniq

    @job_types = JobType.where(id: params[:job].try(:[], :job_types_id))
  
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
         job_types_id:[],
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
