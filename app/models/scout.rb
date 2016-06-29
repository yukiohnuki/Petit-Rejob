class Scout < ActiveRecord::Base
  belongs_to :user
  belongs_to :job
  belongs_to :client

  enum status: { new_arrival: 0, accept: 1, deny: 2}
end
