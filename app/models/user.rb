class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password, :password_confirmation, :password_digest, :store_id, :user_name, :account_type
  
  has_secure_password
  
  validates_presence_of :password, :on => :create
  
  validates_presence_of :first_name, :last_name, :store_id, :user_name, :account_type
end
