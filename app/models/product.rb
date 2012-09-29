class Product < ActiveRecord::Base
  attr_accessible :barcode, :name
  
  
  validates_presence_of :barcode, :name
  
  validates_uniqueness_of :barcode, :name
end
