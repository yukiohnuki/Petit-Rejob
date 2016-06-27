class JobTypesJob < ActiveRecord::Base
	belongs_to :job
	belongs_to :job_type
end
