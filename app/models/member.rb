class Member < ActiveRecord::Base
  
  has_many :transactions
  
  attr_accessible :first_name, :last_name
end
