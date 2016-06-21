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

  def admin_top
  end

  def shop_index
    # if client_logged_in?
    #   @shop = current_user.shops.build
    # end
    #@client = Client.find(params[:id])
  end

  def shop_edit
    if current_client.shops.map {|shop| shop.id}.include?(params[:id].to_i)
    @shop = Shop.find(params[:id])
    end
  end

  def shop_edit_update
    
    begin
      @shop = Shop.find(params[:id])
      @shop.update(shop_edit_params)
      redirect_to shop_index_path
    rescue => e
      render :shop_edit
    end
  end

  private

    def client_params
      params.require(:client).permit(:name, :mail, :password,
                                   :password_confirmation)
    end

    def shop_edit_params
      params.require(:shop).permit(:client_id, :name)
    end

    def index
      @clients = Client.all
    end

    def client_logged_in?
      session[:client].present?
    end

    def current_client
      if client_logged_in?
         Client.find(session[:client])
      end
    end

end
