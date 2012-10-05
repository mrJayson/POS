class Employee < ActiveRecord::Base
  
  has_many :transactions
  
  attr_accessible :first_name, :last_name, :password_digest, :status, :user_name
end
