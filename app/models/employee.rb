class Employee < ActiveRecord::Base
  
  has_secure_password
  
  has_many :transactions
  
  belongs_to :location
  
  attr_accessible :first_name, :last_name, :password_digest, :status, :user_name, :password, :password_confirmation, :location_id
end
