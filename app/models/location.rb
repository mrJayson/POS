class Location < ActiveRecord::Base
  include StocksHelper
  include LocationsHelper
  
  belongs_to :location
  
  has_many :locations
  has_many :employees
  has_many :stocks
  has_many :transactions
  
  #promotions

  attr_accessible :name, :location_type, :max_capacity, :location_id, :stock_id
  
  validates_presence_of :name, :location_type, :max_capacity
  
  validates_inclusion_of :location_type, :in => ["shelf", "store", "warehouse"]
  
  #Capacity-inv3, inv4, MaxLimitOfStorage/Shelf are NAT1
  #PD 1.2.1 The System is to record the capacity of each shelf and the number of shelves in the store
  validates_numericality_of :max_capacity, :greater_than => 0
  
  #PD 1.1.13 The system treats all warehouse as one
  #all locations except warehouse must have a parent location
  validates_presence_of :location_id, :unless => :is_warehouse?
  def is_warehouse?
    :location_type == "warehouse"
  end
  
  
  #Capacity-inv13, inv14, totalQuantity <= MaxLimit
  #PD 1.2.7 The system is to detect and prevent overstocking of products on shelved
  #current_quantity cannot be greater than max_quantity
  validate :max_greater_than_current
  def max_greater_than_current
    if (sum_location_quantity(self) + get_marginal_quantity) > max_capacity
      errors.add(:max_capacity, "moving too much stock into location")
    end
    set_marginal_quantity(0)
  end
  
  #current_quantity must always be positive
  validate :current_greater_than_zero
  def current_greater_than_zero
    if (sum_location_quantity(self) + get_marginal_quantity) < 0
      errors.add(:max_capacity, "quantity is a negative number")
    end
  end
  
  #all store names must be unique, not shelves as they are typically aisle numbers
  validates_uniqueness_of :name, :unless => :is_shelf?
  def is_shelf?
    location_type == "shelf"
  end
  
end
