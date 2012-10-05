class Product < ActiveRecord::Base
  
  has_many :stocks
  
  attr_accessible :barcode, :name
end
