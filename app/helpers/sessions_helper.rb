module SessionsHelper

  def admin_user_logged_in?
    session[:admin_user].present?
  end
  def current_admin_user
    if admin_user_logged_in?
       AdminUser.find(session[:admin_user])
    end
  end
end
