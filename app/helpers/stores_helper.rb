module StoresHelper
  include ApplicationHelper
  def sum_store_quantity
    store_product_infos = current_store.store_product_infos
    sum = 0
    store_product_infos.each do |sp|
      sum = sum + sp.quantity
    end
    return sum
    
  end
  
end
