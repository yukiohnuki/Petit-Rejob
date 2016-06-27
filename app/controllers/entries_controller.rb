class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @user = User.find(session[:user])
    @job = Job.find(params[:job_id])
  
  end

  def create
  	
  	if Entry.create(user_id: session[:user], job_id: params[:user][:job])
      redirect_to "/"
      flash[:success] = "応募が完了しました"
    else
      render 'new'
    end
  end

  def index
    @entries = Entry.all
  end

  # def entry_params
  #     params.require(:entry).permit(:name, :mail, :password,
  #                                  :password_confirmation)
  # end
end
