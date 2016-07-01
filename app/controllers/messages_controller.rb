class MessagesController < ApplicationController
  def new
  	@message = Message.new
  end

  def create
  	if Message.create(message_params)
      redirect_to new_message_path
      flash[:success] = "メッセージを送りました"
    else
      redirect_to '/'
    end
  end

  def index
  end

  private
    def message_params
        params.require(:message).permit(:body, :client_id, :user_id)
  	end

  	def user_logged_in?
    session[:user].present?
    end

    def current_user
      if user_logged_in?
         User.find(session[:user])
      end
    end

end
