class ShelfProductInfo < ActiveRecord::Base
  belongs_to :product
  belongs_to :shelf
  belongs_to :store_product_info
  attr_accessible :quantity, :product_id, :shelf_id
  
  validates_presence_of :quantity, :product_id, :shelf_id
end
