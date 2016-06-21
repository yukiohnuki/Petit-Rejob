class KeepsController < ApplicationController
  def check
  	keep = Keep.where('user_id in (?) and job_id in (?)',
  	        session[:user],params[:job_id])
	if keep.present?
		keep.delete_all
	else
    	Keep.create(user_id: session[:user], job_id: params[:job_id].to_i)
    end
    redirect_to job_path(params[:job_id].to_i)
  end
end
