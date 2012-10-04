class StoreProductInfo < ActiveRecord::Base
  has_many :order_to_warehouse  
  belongs_to :product
  belongs_to :store

  attr_accessible :price, :quantity, :product_id, :store_id
  attr_accessor :update_quantity
  
  validates_presence_of :price, :quantity, :product_id, :store_id
  
  validates_numericality_of :price, :quantity
  
  
  def validates_uniqueness_in_store (store_id, product_id)
    @store_product_infos = StoreProductInfo.find(:all, :conditions => ["store_id = ?", store_id])

    
    @store_product_infos.each do |s|
      if s.product_id == product_id
        return false
      end
    end
    return true
  end
end
