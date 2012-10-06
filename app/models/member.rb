class Member < ActiveRecord::Base
  
  has_many :transactions
  
  attr_accessible :first_name, :last_name, :user_name
  
  validates_presence_of :first_name, :last_name, :user_name
  
  validates_uniqueness_of :user_name
end
