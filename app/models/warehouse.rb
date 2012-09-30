class Warehouse < ActiveRecord::Base
  has_many :store
  
  attr_accessible :current_capacity, :max_capacity
  
  validates_presence_of :current_capacity, :max_capacity
end
