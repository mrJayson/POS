class Stock < ActiveRecord::Base
  
  belongs_to :location
  belongs_to :product
  
  attr_accessible :location_id, :product_id, :benchmark, :price, :quantity, :standard_quantity, :location, :product
  
  attr_accessor :update_quantity, :movement_direction
  
  #Product -inv8, inv9, all products registered must have a price and quantity
  #Store-inv4 all product on shelf are to have a quantity
  #Reorder-inv5, inv8 all locations are to have a benchmark
  validates_presence_of  :location_id, :product_id, :benchmark, :price, :quantity, :standard_quantity, :location, :product
  
  #Product-inv5 prices are store NAT ~ PD 1.3.2 The system is to have the price stored in its product information
  validates_numericality_of :location_id, :product_id, :benchmark, :price, :standard_quantity
  
  #Product -inv4, inv10, noOfProductsInBackStore/Warehouse must be a NAT
  #Store-inv3 noOfProductOnShelf : productOnShelf -> NAT
  validates_numericality_of :quantity, :standard_quantity, :benchmark, :greater_than_or_equal_to => 0
  
  validates_associated :location, :product
end
