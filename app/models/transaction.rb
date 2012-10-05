class Transaction < ActiveRecord::Base
  belongs_to :location
  belongs_to :employee
  belongs_to :member
  attr_accessible :loyalty_points_to_add, :payment_type, :product_list, :total_price
end
