module ShelfProductInfosHelper
  include ShelvesHelper
  include StoreProductInfosHelper
  def products_on_shelf
    return current_shelf.shelf_product_infos
    #returns type shelf_product_info
  end
  
  def remaining_products_to_register_on_shelf
    products_currently_on_shelf = []
    products_on_shelf.each do |p|
      products_currently_on_shelf << p.product
    end
    products_currently_in_store = []
    products_in_store.each do |p|
      products_currently_in_store << p.product
    end
    
    return products_currently_in_store - products_currently_on_shelf
  end
  
end
