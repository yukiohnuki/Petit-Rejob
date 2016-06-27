class User < ActiveRecord::Base
  validates :name,  presence: true
  validates :name_kana,  presence: true
  validates :mail, presence: true
  validates :password,  presence: true
  validates :password_confirmation, presence: true
  validates :prefecture_id,  presence: true
  validates :city,  presence: true
  has_many :entries
  has_many :keeps
  has_many :messages
  has_many :scouts
  has_one :prefecture

  def authenticate(inputed_value)
    inputed_value == password
  end
  
end
