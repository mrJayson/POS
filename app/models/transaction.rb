class Transaction < ActiveRecord::Base
  
  class Transaction_Entry
    
    @product_id = 0
    @transaction_id = 0
    @quantity = 0
    @price = 0
    
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
  
  
  serialize :product_list, Array
  
  belongs_to :location
  belongs_to :employee
  belongs_to :member
  
  attr_accessible :loyalty_points_to_add, :payment_type, :total_price, :product_list
  
  attr_accessor :new_item
  
  validates_inclusion_of :payment_type, :in => ["pending", "cash", "credit"]
  
  validates_presence_of :loyalty_points_to_add, :payment_type, :product_list, :total_price, :location, :employee, :if => :paid?
  validates_numericality_of :loyalty_points_to_add, :total_price , :if => :paid?
  def paid?
    payment_type != 'pending'
  end

end
