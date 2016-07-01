class JobEntriesController < ApplicationController

  def index
    @entry = Entry.new
    @user = User.new
  end

  def selection_status_update
    @user = User.new
    @entry = Entry.new
    @entry = Entry.find(params[:entry][:id])
    @entry.update(selection_status_params)
  end

  def search
  end

  private

  def client_logged_in?
    session[:client].present?
  end

  def current_client
    if client_logged_in?
       Client.find(session[:client])
    end
  end

  private

  def selection_status_params
    params.require(:entry).permit(:selection_status_id)
  end

end
