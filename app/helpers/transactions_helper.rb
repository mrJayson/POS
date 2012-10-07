module TransactionsHelper

  include ApplicationHelper
  
  def get_total_amount(list)
    list_of_products = current_store.transaction.product_list
    total = 0
    each list_of_products do |s|
      total += s.price
    end
    return total
    
  end

  
  def current_transaction
    return Transaction.last
  end
  
  def complete_transaction
    Transaction.create({payment_type: 'pending'})

  end
  
end
