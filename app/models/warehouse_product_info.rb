class WarehouseProductInfo < ActiveRecord::Base
  has_many :order_to_warehouse
  belongs_to :product
  belongs_to :warehouse
  
  attr_accessible :quantity, :product_id, :warehouse_id
  
  validates_presence_of :warehouse_id, :product_id, :quantity
  validates_uniqueness_of :product_id
end
