class Product < ActiveRecord::Base
  
  has_many :stocks
  

  
  attr_accessible :barcode, :name
  
  validates_presence_of :name, :barcode
  
  validates_uniqueness_of :barcode
end
