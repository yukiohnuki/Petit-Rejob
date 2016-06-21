module ClientSessionsHelper

  def client_logged_in?
    session[:client].present?
  end

  def current_client
    if client_logged_in?
       Client.find(session[:client])
    end
  end
end
