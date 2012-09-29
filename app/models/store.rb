class Store < ActiveRecord::Base
  attr_accessible :current_capacity, :max_capacity, :name
  
  
    validates_presence_of :current_capacity, :max_capacity, :name
  
  validates_uniqueness_of :current_capacity, :max_capacity, :name
end
