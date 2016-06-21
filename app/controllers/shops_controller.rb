class ShopsController < ApplicationController

  def new
  	@shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to new_shop_path
      flash[:success] = "新しい店舗が作成されました"
    else
      render 'new'
    end
  end

  def index
    @shops = Shop.all
  end

  private

    def shop_params
      params.require(:shop).permit(:client_id, :name)
    end

end
