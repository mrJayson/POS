class Transaction < ActiveRecord::Base

  
  class Transaction_Entry
    
    @product_id = 0
    @transaction_id = 0
    @quantity = 0
    @price = 0
    
    #refactor to remove getter and setter functions
    def product_id
      @product_id
    end
    def product_id=(p)
      @product_id = p
    end
    def transaction_id
      @transaction_id
    end
    def transaction_id=(t)
      @transaction_id = t
    end
    def quantity
      @quantity
    end  
    def quantity=(q)
      @quantity = q
    end
    def price
      @price
    end
    def price=(p)
      @price = p
    end
  end
  
  serialize :product_list
  
  belongs_to :location
  belongs_to :employee
  belongs_to :member
  
  attr_accessible :loyalty_points_to_add, :payment_type, :total_price, :product_list, :location_id
  
  attr_accessor :new_item, :remove_item, :amount_scanned, :member_id
  
  validates_inclusion_of :payment_type, :in => ["pending", "cash", "credit"]
  
  validates_presence_of :loyalty_points_to_add, :payment_type, :product_list, :total_price, :location, :location_id, :employee, :if => :paid?
  validates_numericality_of :loyalty_points_to_add, :total_price , :if => :paid?
  def paid?
    payment_type != 'pending'
  end

end
