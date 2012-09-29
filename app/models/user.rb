class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password_digest, :user_name, :password, :password_confirmation
  
  has_secure_password
  
  validates_presence_of :password, :on => :create
end
