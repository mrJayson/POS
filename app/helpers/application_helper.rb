module ApplicationHelper
  
  #gets current user logged in
  def current_user
    User.find(session[:user_id])
  end
  
  #gets current store logged in
  def current_store
    Store.find(session[:store_id])
  end
  
  
  
end
