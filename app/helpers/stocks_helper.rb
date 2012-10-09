module StocksHelper
  include ApplicationHelper
  
  @@marginal_quantity = 0
  
  @@direction = ""
  
  def set_direction(d)
    #direction of stock movement
    @@direction = d
  end
  
  def get_direction
    #direction of stock movement
    return @@direction
  end
  
  def set_marginal_quantity(t)
    #amount of difference in as-is and to-be quantities
    @@marginal_quantity = t
  end
  
  def get_marginal_quantity
    #amount of difference in as-is and to-be quantities
    return @@marginal_quantity
  end
  
  def find_stock_in_store(product_id)
    #given a product_id, find the stock object associated with it
    Stock.find(:first, :conditions => ["location_id = ? AND product_id = ?", current_store.id, product_id])
  end
  
  def get_current_products_in_store(location)
    #returns array of products registered in store
    #current_store.stocks returns array of 'stocks' objects
    current = []
    
    location.stocks.each do |s|
      current << s.product
    end
    
    return current
  end
  
  def get_remaining_products_for_register (location)
    current = []
    
    parent_location_stocks = []
    
    location.stocks.each do |s|
      current << s.product
    end
    
    location.location.stocks.each do |s|
      parent_location_stocks << s.product
    end
    
    #refactor this function
    
    return parent_location_stocks - current
  end
  
  def update_stock(stock, update_quantity)
    stock.quantity += update_quantity
    
    #should return stock that is updated but not saved
    return stock
  end
  
  def product_name(product_id)
    return Product.find(product_id).name if product_id != nil
    
  end
  
end
