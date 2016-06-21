module UserSessionsHelper
  def user_logged_in?
    session[:user].present?
  end

  def current_user
    if user_logged_in?
       User.find(session[:user])
    end
  end

end
