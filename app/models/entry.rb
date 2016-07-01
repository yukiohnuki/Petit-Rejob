class Entry < ActiveRecord::Base
 belongs_to :user
 belongs_to :job
 belongs_to :selection_status
 belongs_to :prefecture

 has_many :job_types_entries
 has_many :job_types, through: :job_types_entries

  # include ActiveModel::Model

  # attr_accessor :name, :name_kana, :mail

  # # Validationを定義する
   validates :user_id, presence: true
   validates :job_id, presence: true
   validates :selection_status_id, presence: true
   validates :name, presence: true
   validates :name_kana, presence: true
   validates :mail, presence: true
   validates :prefecture_id, presence: true
   validates :city, presence: true
   validates :job_types, presence: true

  # validates :mail, presence: true


end

