class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @user = User.find(session[:user])
    @job = Job.find(params[:job_id])
  
  end

  def create
    @entry = Entry.new(user_id: session[:user], job_id: params[:user][:job_id])
      if params[:back]
         render :new
  	  elsif  @entry.save
        redirect_to "/entries/complete"
      else
        render 'new'
      end
  end

  def confirm
    @job = Job.find(params[:user][:job_id])
    @user = User.new(entry_params)
    # if @user.invalid?
    #   render :new
    # end
    #fail
  end

  def index
    @entries = Entry.all
  end

  def complete
  end

  private

  def entry_params
      params.require(:user).permit(:name,
                                  :name_kana,
                                  :mail,
                                  :prefecture_id,
                                  :city,
                                  )

  end

end
