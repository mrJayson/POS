module ApplicationHelper
  
  def current_user
    return Employee.find(session[:user_id])
  end
  
  def current_store
    return Location.find(session[:store_id])
  end
  
  def current_shelf
    return Location.find(session[:shelf_id]) if session[:shelf_id] != nil
  end
  
  def current_location_type
    return session[:current_location_type]
  end
  
  def session_type
    if session[:status] == "staff" || session[:status] == "manager"
      return "store"
    elsif session[:status] == "warehouse"
      return "warehouse"
    end
  end

end
