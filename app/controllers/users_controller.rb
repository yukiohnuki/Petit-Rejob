class UsersController < ApplicationController

   def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
      flash[:success] = "会員登録が完了しました"
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def profile
  end

  def edit
    @user = current_user
  end

  def update
    begin
      @user = User.find(params[:id])
      @user.update(job_update_params)
      redirect_to user_path(session[:user])
    rescue => e
      render :edit
    end
  end

  def entry_refuse
    @entry = Entry.find(params[:entry_id])
    @entry.selection_status_id = 5
    @entry.save
    redirect_to "/users/#{current_user.id}/entry_status"
  end

  def entry_adoption
    @entry = Entry.find(params[:entry_id])
    @entry.selection_status_id = 3
    @entry.save
    redirect_to "/users/#{current_user.id}/entry_status"
  end


  def index
  end

  def keep_status
  end

  def entry_status
  end

  def scout_status
  end

  def scout_accept
    @scout = Scout.find(params[:scout_id])
    @scout.status = "accept"
    @scout.save
    @entry = Entry.new(user_id: current_user.id, job_id: params[:job_id], selection_status_id: 1)
    @entry.save
    redirect_to "/users/#{current_user.id}/scout_status"
  end

  def scout_deny
    @scout = Scout.find(params[:scout_id])
    @scout.status = "deny"
    @scout.save
    redirect_to "/users/#{current_user.id}/scout_status"
  end

private

    def user_params
      params.require(:user).permit(:name, :name_kana, :mail, :password,
                                   :password_confirmation, :prefecture_id, :city)
    end

    def user_logged_in?
    session[:user].present?
  end

  def current_user
    if user_logged_in?
       User.find(session[:user])
    end
  end

  def job_update_params
      params.require(:user).permit(:name, :name_kana, :mail, :password, :password_confirmation, :prefecture_id, :city)
  end
end
