class AdminUser < ActiveRecord::Base
  def authenticate(inputed_value)
    inputed_value == password
  end
end

