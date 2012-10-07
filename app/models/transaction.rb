class Transaction < ActiveRecord::Base
  
  include TransactionHelper
  
  serialize :product_list
  
  belongs_to :location
  belongs_to :employee
  belongs_to :member
  
  attr_accessible :loyalty_points_to_add, :payment_type, :product_list, :total_price
  attr_accessor :amount_received
  
  #validates_presence_of :loyalty_points_to_add, :payment_type, :product_list, :total_price, :location, :employee, :member
  
  validates_numericality_of :loyalty_points_to_add, :total_price
end
