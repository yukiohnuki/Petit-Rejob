class Client < ActiveRecord::Base
  validates :name,  presence: true
  validates :mail, presence: true
  validates :password,  presence: true
  validates :password_confirmation, presence: true

  has_many :shops
  has_many :jobs

  def authenticate(inputed_value)
    inputed_value == password
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
