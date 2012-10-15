class Member < ActiveRecord::Base
  #DN 3.4 The system can support a customer membership program
  
  include MembersHelper
  
  has_many :transactions
  
  attr_accessible :first_name, :last_name, :user_name
  
  validates_presence_of :first_name, :last_name, :user_name
  
  validates_uniqueness_of :user_name
end
