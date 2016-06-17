module SessionsHelper

  def admin_user_logged_in?
    session[:admin_user].present?
  end

  def authenticate(inputed_value)
    inputed_value == password
  end
end
