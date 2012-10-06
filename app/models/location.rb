class Location < ActiveRecord::Base
  
  belongs_to :location
  
  has_many :locations
  has_many :employees
  has_many :stocks
  has_many :transactions

  attr_accessible :name, :location_type, :max_capacity, :location_id
  
  validates_presence_of :name, :location_type, :max_capacity
  
  #validates_uniqueness_of :name # only if store, must be unique
  
  validates_inclusion_of :location_type, :in => ["shelf", "store", "warehouse"]
  
  
  
end
