class Shelf < ActiveRecord::Base
  has_many :shelf_product_info
  belongs_to :store

  attr_accessible :current_capacity, :max_capacity, :store_id
  
  validates_presence_of :store_id, :max_capacity, :current_capacity
end
