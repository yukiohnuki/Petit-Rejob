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
  belongs_to :prefecture

  has_many :job_types_users
  has_many :job_types, through: :job_types_users
  

  def authenticate(inputed_value)
    inputed_value == password
  end
  

  scope :search_job_types, -> (job_types_params) {
    joins(:job_types).where(job_types: {id: job_types_params[:job_types_id]})}
end
