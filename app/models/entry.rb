class Entry < ActiveRecord::Base
 belongs_to :user
 belongs_to :job

  # include ActiveModel::Model

  # attr_accessor :name, :name_kana, :mail

  # # Validationを定義する
  # validates :name, presence: true
  # validates :name_kana, presence: true
  # validates :mail, presence: true

end

