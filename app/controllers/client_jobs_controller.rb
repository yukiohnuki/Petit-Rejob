class ClientJobsController < ApplicationController

  
  def index
  end
  
  def edit
    if current_client.jobs.map {|job| job.id}.include?(params[:id].to_i)
    @job = Job.find(params[:id])
    end
  end

  def update
    begin
      @job = Job.find(params[:id])
      @job.update(job_params)
      redirect_to client_jobs_path
    rescue => e
      render :edit
    end
  end

  private
  	def client_logged_in?
      session[:client].present?
    end

    def current_client
      if client_logged_in?
         Client.find(session[:client])
      end
    end

    def job_params
      params.require(:job).permit(:client_id, :shop_id, :search_list_photo,
      	     :top_photo, :title, :prefecture_id, :city, :salary, :message)
    end

end
