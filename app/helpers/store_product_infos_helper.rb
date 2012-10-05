module StoreProductInfosHelper
  include ApplicationHelper
  include StoresHelper
  def products_in_store
    return current_store.store_product_infos
    #returns type store_product_infos
  end
  
  def remaining_products_to_register_in_store
    
    #get all the products currently in store from the list of store_product_infos
    current_products = []
    products_in_store.each do |p|
      current_products << p.product
    end
    
    return Product.all - current_products
  end
end
