class EntriesController < ApplicationController
  def new
    if session[:user].present?
      @user = User.find(session[:user])
    else
      @user = User.new
    end

    @entry = Entry.new(user_info(@user))
    @job = Job.find(params[:job_id])
  
  end

  def confirm
    @entry = Entry.new(entry_params)
    @job = Job.find(@entry.job_id)
    if @entry.valid? # Validationチェック
      session[:entry] = entry_params
    else
      render 'new'

    end
    # @job_types = JobType.where(id: params[:entry][:job_types])
    # if @user.invalid?
    #   render :new
    # end
    #fail
  end

  def create
    @entry = Entry.new(session[:entry])
    session[:entry] = nil
      if params[:back]
       render :new
      elsif @entry.save
        # @job_types_entries.save
        redirect_to "/entries/complete"
      else
        render 'new'
      end
  end

  

  def index
    @entries = Entry.all
  end

  def complete
  end

  private

  def entry_params
      params.require(:entry).permit(:name,
                                  :name_kana,
                                  :mail,
                                  :prefecture_id,
                                  :city,
                                  :user_id,
                                  :job_id,
                                  :selection_status_id,
                                  job_type_ids: [],
                                  )
  end


  def job_types_params
    params.require(:user).permit(:job_type_id)
    fail
  end

  def user_info(user)
    {
      user_id: user.id,
      name: user.name,
      name_kana: user.name_kana,
      prefecture_id: user.prefecture_id,
      city: user.city,
      mail: user.mail,
      job_type_ids: user.job_type_ids,
    }
  end

end
