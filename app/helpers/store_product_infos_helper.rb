module StoreProductInfosHelper
  include ApplicationHelper
  include StoresHelper
  def products_in_store
    return current_store.store_product_infos
  end
end
