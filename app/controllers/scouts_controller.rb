class ScoutsController < ApplicationController
	def new
	  @job = Job.new
	  @user = User.new
	  @users = User.all
	end

	# def job_search
 #        @job = Job.find(params[:job][:id])
 #        @user = User.new
 #        @users = User.all
 #    end

    def user_search

      @job = Job.new
      @user = User.new
      #   if params[:user][:job_id].present?
      #     @job = Job.find(params[:user][:job_id])
      # 	elsif
      # 	  @job = Job.find(params[:job][:id])
      # 	else

      # 	  @job = Job.find(params[:job_id])
      # 	end

        if params[:user][:prefecture_id].present?
          @users = User.where(prefecture_params)
        #fail
        else
          @users = User.all
        end

        if params[:user][:job_types_id].present?
          @users = @users.search_job_types(job_types_params)
        end
    end


    def scouts_create
      @user = User.new
      Scout.create(user_id: params[:user_id], client_id: params[:client_id].to_i)
      redirect_to "/scouts/new"
    end

    private

    def prefecture_params
      params.require(:user).permit(
         :prefecture_id,
         )
    end

    def job_types_params
      params.require(:user).permit(
         job_types_id:[],
         )
      #fail
    end

    def client_logged_in?
      session[:client].present?
    end

    def current_client
      if client_logged_in?
         Client.find(session[:client])
      end
    end
end
