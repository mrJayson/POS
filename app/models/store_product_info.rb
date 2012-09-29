class StoreProductInfo < ActiveRecord::Base
  belongs_to :product
  belongs_to :store
  attr_accessible :price, :quantity, :product_id, :store_id
  
  
  validates_presence_of :price, :quantity, :product_id, :store_id
end
