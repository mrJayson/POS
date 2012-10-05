class Stock < ActiveRecord::Base
  belongs_to :location
  belongs_to :product
  attr_accessible :benchmark, :price, :quantity, :standard_quantity, :location_id, :product_id
  attr_accessor :update_quantity
end
