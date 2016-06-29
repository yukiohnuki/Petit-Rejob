class JobType < ActiveRecord::Base
  has_many :job_types_jobs
  has_many :jobs, through: :job_types_jobs

  has_many :job_types_users
  has_many :users, through: :job_types_users

end
