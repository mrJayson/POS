module ApplicationHelper
  
  def current_user
    return Employee.find(session[:user_id])
  end
  
  def current_store
    return Location.find(session[:store_id])
  end
  
  def session_type
    if session[:status] == "staff" || session[:status] == "manager"
      return "store"
    elsif session[:status] == "warehouse"
      return "warehouse"
    end
  end
end
