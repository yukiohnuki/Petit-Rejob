class JobTypesUser < ActiveRecord::Base
	belongs_to :user
	belongs_to :job_type
end
