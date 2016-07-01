class UserSessionsController < ApplicationController

  def new
  	@user = User.new
  end

  def create
    @user = User.find_by(mail: user_params[:mail])
    if @user && @user.authenticate(user_params[:password])
      session[:user] = @user.id # <--- login
      redirect_to "/users/#{current_user.id}"
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



    def user_logged_in?
    session[:user].present?
    end

    def current_user
      if user_logged_in?
         User.find(session[:user])
      end
    end

end
