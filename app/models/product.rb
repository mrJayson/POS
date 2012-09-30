class Product < ActiveRecord::Base
  has_many :store_product_info
  
  attr_accessible :barcode, :name
   
  validates_presence_of :barcode, :name
  
  validates_uniqueness_of :barcode, :name
  
  

  
  
end
