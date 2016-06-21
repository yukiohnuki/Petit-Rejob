class ClientSessionsController < ApplicationController
  def new
  	@client = Client.new
  end

  def create
    @client = Client.find_by(mail: client_params[:mail])
    if @client && @client.authenticate(client_params[:password])
      session[:client] = @client.id # <--- login
      redirect_to params[:referer].present? ? params[:referer] : admin_top_path
    else
      @client = Client.new
      flash.now[:referer] = params[:referer]
      flash.now[:error] = true
      redirect_to new_client_session_path
    end
  end

  def delete
    session[:client] = nil
    redirect_to new_client_session_path
  end

  private
    def client_params
      params.require(:client).permit(:mail, :password)
    end

end