class UserSessionsController < ApplicationController

  def new
  	@user = User.new
  end

  def create
    @user = User.find_by(mail: user_params[:mail])
    if @user && @user.authenticate(user_params[:password])
      session[:user] = @user.id # <--- login
      redirect_to params[:referer].present? ? params[:referer] : new_user_session_path
    else
      @user = User.new
      flash.now[:referer] = params[:referer]
      flash.now[:error] = true
      redirect_to new_user_session_path
    end
  end

  def delete
    session[:user] = nil
    redirect_to new_user_session_path
  end

  private
    def user_params
      params.require(:user).permit(:mail, :password)
    end

end
