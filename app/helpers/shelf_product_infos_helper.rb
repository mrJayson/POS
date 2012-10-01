module ShelfProductInfosHelper
  include ShelvesHelper
  def products_on_shelf
    return current_shelf.shelf_product_infos
  end
  
end
