class Warehouse < ActiveRecord::Base
  
  attr_accessible :current_capacity, :max_capacity
  
  validates_presence_of :current_capacity, :max_capacity
end
