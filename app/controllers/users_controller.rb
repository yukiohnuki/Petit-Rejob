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
    #@user = User.find(params[:id])
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

  def index
  end

  def keep_status
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
