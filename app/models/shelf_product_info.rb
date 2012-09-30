class ShelfProductInfo < ActiveRecord::Base
  belongs_to :product
  belongs_to :shelf
  
  attr_accessible :benchmark, :quantity, :product_id, :shelf_id
  
  validates_presence_of :shelf_id, :product_id, :benchmark, :quantity
end
