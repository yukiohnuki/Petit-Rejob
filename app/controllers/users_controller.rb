class UsersController < ApplicationController

   def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
      flash[:success] = "会員登録が完了しました"
    else
      render 'new'
    end
  end

  def show
    @user = User.params(session[:id])
  end
  
  def index
  end

  private

    def user_params
      params.require(:user).permit(:name, :name_kana, :mail, :password,
                                   :password_confirmation, :prefecture_id, :city)
    end

end
