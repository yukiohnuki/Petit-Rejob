class JobTypesEntry < ActiveRecord::Base
	belongs_to :entry
	belongs_to :job_type
	validates :job_type_id, presence: true
end
