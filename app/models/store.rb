class Store < ActiveRecord::Base
  attr_accessible :current_capacity, :max_capacity, :name
  
  
  validates_presence_of :current_capacity, :max_capacity, :name
  
  validates_uniqueness_of :max_capacity, :name
  
  def sum
    store_product_infos = StoreProductInfo.find(:all, :conditions => ["store_id = ?", self.id])
    sum = 0
    store_product_infos.each do |sp|
      sum = sum + sp.quantity
    end
    return sum
    
  end
  
  
end
