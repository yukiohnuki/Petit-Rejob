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
  has_many :keeps

  has_many :job_types_jobs
  has_many :job_types, through: :job_types_jobs
  
  belongs_to :prefecture
  mount_uploader :top_photo, TopPhotoUploader
  mount_uploader :search_list_photo, SearchListPhotoUploader

  scope :search_job_types, -> (job_types_params) {
    joins(:job_types).where(job_types: {id: job_types_params[:job_types_id]})}

  scope :category_search, -> (job_category) {
    
  }

end
