module ApplicationHelper
  
  def current_user
    return Employee.find(session[:user_id])
  end
  
  #def current_location
  #  return 
  #end
  
end
