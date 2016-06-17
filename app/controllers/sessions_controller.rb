class SessionsController < ApplicationController
  
  def admin_user_login
  	@admin_user = AdminUser.new
  end

  def create
    @admin_user = AdminUser.find_by(mail: admin_user_params[:mail])
    if @admin_user && @admin_user.authenticate(admin_user_params[:password])
      session[:admin_user] = @admin_user.id # <--- login
      redirect_to params[:referer].present? ? params[:referer] : admin_user_login_path
    else
      @admin_user = AdminUser.new
      flash.now[:referer] = params[:referer]
      flash.now[:error] = true
      render :admin_user_login
    end
  end

  def delete
    session[:admin_user] = nil
    redirect_to admin_user_login_path
  end

  private
    def admin_user_params
      params.require(:admin_user).permit(:mail, :password)
    end

end