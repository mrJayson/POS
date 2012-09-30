class Shelf < ActiveRecord::Base
  belongs_to :store
  attr_accessible :aisle, :current_capacity, :max_capacity, :store_id
  
  validates_presence_of :aisle, :current_capacity, :max_capacity, :store_id
  
  
    def sum
    shelf_product_infos = ShelfProductInfo.find(:all, :conditions => ["shelf_id = ?", self.id])
    sum = 0
    shelf_product_infos.each do |sp|
      sum = sum + sp.quantity
    end
    return sum
    
  end
end
