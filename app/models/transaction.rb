class Transaction < ActiveRecord::Base
  
  include TransactionHelper
  
  serialize :product_list
  
  belongs_to :location
  belongs_to :employee
  belongs_to :member
  
  attr_accessible :loyalty_points_to_add, :payment_type, :total_price
  
  validates_inclusion_of :payment_type, :in => ["pending", "cash", "credit"]
  
  validates_presence_of :loyalty_points_to_add, :payment_type, :product_list, :total_price, :location, :employee, :if => :paid?
  validates_numericality_of :loyalty_points_to_add, :total_price , :if => :paid?
  def paid?
    payment_type != 'pending'
  end

end
