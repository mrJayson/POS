class Stock < ActiveRecord::Base
  
  belongs_to :location
  belongs_to :product
  
  attr_accessible :location_id, :product_id, :benchmark, :price, :quantity, :standard_quantity, :location, :product
  
  attr_accessor :update_quantity, :movement_direction
  
  validates_presence_of  :location_id, :product_id, :benchmark, :price, :quantity, :standard_quantity, :location, :product
  
  validates_numericality_of :location_id, :product_id, :benchmark, :price, :standard_quantity
  
  validates_numericality_of :quantity, :greater_than_or_equal_to => 0
  
  validates_associated :location, :product
end
