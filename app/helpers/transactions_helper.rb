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
    entry.price = find_stock_in_store(product_id).price
    
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
    
    #allocate attributes to transactions first
    t.employee = current_user
    t.location = current_location
    t.total_price = get_total_price(t.product_list)
    t.loyalty_points_to_add = get_total_loyalty_points(t.product_list)
    
    t.save
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
