class Job < ActiveRecord::Base
  validates :client_id,  presence: true
  validates :shop_id,  presence: true
  validates :title,  presence: true
  validates :prefecture_id,  presence: true
  validates :city,  presence: true
  validates :salary,  presence: true
  validates :message,  presence: true
  
  belongs_to :shop
  belongs_to :client
  has_many :entries

end
