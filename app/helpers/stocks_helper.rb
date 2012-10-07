module StocksHelper
  
  @@marginal_quantity = 0
  
  @@direction = ""
  
  def set_direction(d)
    @@direction = d
  end
  
  def get_direction
    return @@direction
  end
  
  def set_marginal_quantity(t)
    @@marginal_quantity = t
  end
  
  def get_marginal_quantity
    return @@marginal_quantity
  end
  
  def get_current_products_in_store(location)
    
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
  
  def product_name(product_id)
    Product.find(product_id).name
  end
  
end
