class Location < ActiveRecord::Base
  include LocationsHelper
  
  belongs_to :location
  
  has_many :locations
  has_many :employees
  has_many :stocks
  has_many :transactions

  attr_accessible :name, :location_type, :max_capacity, :location_id, :stock_id
  
  validates_presence_of :name, :location_type, :max_capacity
  
  validates_inclusion_of :location_type, :in => ["shelf", "store", "warehouse"]
  
  validates_numericality_of :max_capacity
  
  validate :max_greater_than_current
  

  
  def max_greater_than_current
    
    if (sum_location_quantity(self) + get_marginal_quantity) > max_capacity
      errors.add(:max_capacity, "moving too much into location")
    end
  end
  
  #validates_uniqueness_of :name # only if store, must be unique
  
  
end
