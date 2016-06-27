class JobType < ActiveRecord::Base
  has_many :job_types_jobs
  has_many :jobs, through: :job_type_jobs

end
