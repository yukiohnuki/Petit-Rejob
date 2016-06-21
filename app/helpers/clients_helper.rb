module ClientsHelper

	def client_logged_in?
      session[:client].present?
    end

end
