module ShelvesHelper
  include ApplicationHelper
  def shelves_in_store
    return current_store.shelves
  end
  
  def get_available_aisle_number
    storeshelf = current_store.shelves
    
    aisle = 1
    i = 0
    while i < storeshelf.size do
      j = 0
      while j < storeshelf.size do
        if storeshelf.at(j).aisle == aisle
          aisle = aisle + 1
        end
        j=j+1
      end
      i=i+1
    end
    return aisle
  end
  
  def current_shelf
    Shelf.find(session[:shelf_id])
  end
  
end
