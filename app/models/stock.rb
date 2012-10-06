class Stock < ActiveRecord::Base
  
  belongs_to :location
  belongs_to :product
  
  attr_accessible :location_id, :product_id, :benchmark, :price, :quantity, :standard_quantity
  
  attr_accessor :update_quantity
  
  validates_presence_of  :location_id, :product_id, :benchmark, :price, :quantity, :standard_quantity, :location, :product
  
  validates_numericality_of :location_id, :product_id, :benchmark, :price, :quantity, :standard_quantity
  
  validates_associated :location, :product
end
