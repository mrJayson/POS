class ShelfProductInfo < ActiveRecord::Base
  belongs_to :product
  attr_accessible :quantity, :product_id, :shelf_id
end
