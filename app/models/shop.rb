class Shop < ActiveRecord::Base
  has_many :jobs
  belongs_to :client

  validates :client_id,  presence: true
  validates :name,  presence: true

end
