module TransactionsHelper

  include ApplicationHelper
  include StocksHelper
  
  def current_transaction
    return Transaction.last
  end
  
  def complete_transaction
    t = Transaction.create({:payment_type => 'pending', product_list: []})
  end
  
  def new_transaction_entry(product_id)
    entry = Transaction::Transaction_Entry.new
    entry.product_id = product_id
    entry.transaction_id = current_transaction.id
    entry.quantity = 1
    entry.price = find_stock_in_location(current_store, product_id).price
    
    return entry
    
  end
  
  def update_product_list(product_id)
    #if product exists in transactions currently, update quantity
    t = current_transaction
    if product_in_transaction?(product_id)
      t.product_list.each do |item|
        if item.product_id == product_id
          item.quantity += 1
        end
      end
      
    #if not make new transaction entry
    else
      entry = new_transaction_entry(product_id)
      #added attributes in above function
      current_transaction.product_list << entry
      t.product_list << entry
    end
    #minus 1 stock from shelf
    stock = find_product_on_shelf_with_store(product_id, current_store)
    stock.quantity -= 1
    stock_valid = stock.valid?
    
    #allocate attributes to transactions first
    t.employee = current_user
    t.location_id = current_store.id
    t.total_price = get_total_price(t.product_list)
    t.loyalty_points_to_add = get_total_loyalty_points(t.product_list)
    t_valid = t.valid?
    100.times do |s|
      puts t_valid && stock_valid
    end
    if t_valid && stock_valid
      stock.save
      t.save
    else
      
    end
  end
  
  def find_product_on_shelf_with_store (product_id, location)
    shelves = location.locations
    shelf_stock = nil
    shelves.each do |shelf|
      shelf.stocks.each do |stock|
        
        if stock.product_id == product_id.to_i
          
          shelf_stock = stock
        end
      end
    end
    
    
    return shelf_stock
  end
  
  def get_total_loyalty_points(product_list)
    return get_total_price(product_list)/2
  end
  
  def get_total_price(product_list)
    total = 0
    product_list.each do |item|
      total += item.price * item.quantity
    end
    return total
  end
  
  def product_in_transaction?(product_id)
    
    transaction = current_transaction
    
    current_transaction.product_list.each do |item|
      if product_id == item.product_id
        return true
      end
    end
    return false
  end
  
end
