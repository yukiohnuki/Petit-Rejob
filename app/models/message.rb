class Message < ActiveRecord::Base
 belongs_to :user
 belongs_to :client

 validates :user_id, presence:true
 validates :client_id, presence:true
 validates :body, presence:true
end
