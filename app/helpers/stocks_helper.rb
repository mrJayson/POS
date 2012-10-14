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
  
  def find_stock_in_location(location, product_id)
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
      #get stocks currently registered
      current << s.product
    end
    
    location.location.stocks.each do |s|
      #get all stock in parent location, all possible products for registration
      parent_location_stocks << s.product
    end
    
    #refactor this function
    
    #all possible products - products already registered
    return parent_location_stocks - current
  end
  
  def update_stock(stock, update_quantity)
    stock.quantity += update_quantity
    
    #should return stock that is updated but not saved
    return stock
  end
  
  def product_name(product_id)
    #given an id, find the product name
    #deprecated
    return Product.find(product_id).name if product_id != nil
    
  end
  
  def get_all_products_on_all_shelves(location)
    products = []
    
    location.locations.each do |shelf|
      shelf.stocks.each do |stock|
        products << stock.product
      end
    end
    return products
  end
  
  def amount_to_move(stock)
    return stock.standard_quantity - stock.quantity
  end
  
  def move_stock(shelf_stock, direction, amount)
    to_stock = shelf_stock
    from_stock = Stock.find(:first, :conditions => ["location_id = ? AND product_id = ?", to_stock.location.location.id, to_stock.product_id])
    #marginal_movement = amount
    set_direction(direction)
    if get_direction == "From"
      #simulates products moving in opposite direction
      amount *= -1
    end
    #update to and from stock records
    to_stock = update_stock(to_stock, amount)
    set_marginal_quantity(amount)
    to_stock_valid = to_stock.valid?
    from_stock = update_stock(from_stock, -amount)
    set_marginal_quantity(-amount)
    from_stock_valid = from_stock.valid?
    
    #check if the movement is valid
    if to_stock_valid && from_stock_valid
      #pass = true, now able to redirect out of update page
      pass = true
      to_stock.save
      from_stock.save
      return true
    else
      return false
    end
    
    
  end
  
end
