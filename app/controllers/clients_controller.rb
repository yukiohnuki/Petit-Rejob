class ClientsController < ApplicationController
  def new
  	@client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to new_client_path
      flash[:success] = "企業アカウントが作成されました"
    else
      render 'new'
    end
  end

  def show
    @client = Client.find(params[:id])
  end

  private

    def client_params
      params.require(:client).permit(:name, :mail, :password,
                                   :password_confirmation)
    end

  def index
    @clients = Client.all
  end
end
