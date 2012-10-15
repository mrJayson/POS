class Transaction < ActiveRecord::Base

  
  class Transaction_Entry
    
    @product_id = 0
    @transaction_id = 0
    @quantity = 0
    @price = 0
    
    attr_accessor :product_id, :transaction_id, :quantity, :price
    
  end
  
  serialize :product_list
  
  belongs_to :location
  belongs_to :employee
  belongs_to :member
  
  attr_accessible :loyalty_points_to_add, :payment_type, :total_price, :product_list, :location_id
  
  attr_accessor :new_item, :remove_item, :amount_scanned, :member_id, :payment, :type_payment, #:refund
  
  validates_inclusion_of :payment_type, :in => ["pending", "cash", "EFTPOS", "gift card", "refund", "exchange"]
  
  validates_presence_of :loyalty_points_to_add, :payment_type, :product_list, :total_price, :location, :location_id, :employee, :if => :paid?
  validates_numericality_of :loyalty_points_to_add, :total_price , :if => :paid?
  def paid?
    payment_type != 'pending'
  end

end
