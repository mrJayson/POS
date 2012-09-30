module ShelfProductInfosHelper
  
  def get_products_from_store
    infos = StoreProductInfo.find(:all, :conditions => ["store_id = ?", session[:store_id]])
    array = []
    infos.each do |i|
      array << Product.find(i.product_id)
    end
    return array
  end
  
end
