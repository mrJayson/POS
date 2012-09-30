class OrderToWarehouse < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :store
  belongs_to :warehouse_product_info
  belongs_to :store_product_info
  
  attr_accessible :order_status, :time_stamp, :store_id, :warehouse_id
  
  validates_presence_of :store_id, :warehouse_id, :order_status
end
