class Location < ActiveRecord::Base
  
  belongs_to :location
  
  has_many :locations
  
  has_many :stocks
  has_many :transactions
  
  #VALID_TYPES = %w (store shelf)
  attr_accessible :name, :location_type, :max_capacity, :location_id
  
  validates_presence_of :name, :location_type, :max_capacity
  
  validates_inclusion_of :location_type, :in => ["shelf", "store", "warehouse"]
  
  
  
end
