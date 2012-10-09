module ApplicationHelper
  
  def current_user
    return Employee.find(session[:user_id])
  end
  
  def current_store
    return Location.find(session[:store_id])
  end
  
  def current_shelf
    if session[:shelf_id] != nil
      return Location.find(session[:shelf_id]) 
    end
    return nil
  end
  
  def current_location_type
    return session[:current_location_type]
  end
  
  def warehouse
    return Location.find_by_name("Warehouse")
  end
  
  def session_type
    if session[:status] == "staff" || session[:status] == "manager"
      return "store"
    elsif session[:status] == "warehouse"
      return "warehouse"
    end
  end
  
  def current_location
    #must refactor to use this function more
    return current_shelf if current_shelf != nil
    
    if current_location_type == "warehouse"
      return warehouse 
    elsif current_location_type == "store"
      return current_store
    else
      return nil
    end
  end
  
  

end
