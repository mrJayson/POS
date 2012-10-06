class SessionsController < ApplicationController
  def create
    #get user
    employee = Employee.find_by_user_name(params[:user_name])
    #check if user exists and if the password is correct
    if employee && employee.authenticate(params[:password])
      
      #store the user and which store they belong to in session
      session[:user_id] = employee.id
      session[:status] = employee.status
      session[:marginal_quantity] = "0"
      session[:shelf_id] = nil
      session[:current_location_type] = nil
      #session[:store_id] = user.store_id
      #session[:session_type] = user.account_type
      
      #redirect to the main sessions page
      if session[:status] == "warehouse"
        redirect_to sessions_warehouse_main_path, :action => "main" , :notice => "Logged in!"
      elsif session[:status] == "staff" || session[:status] == "manager"
        session[:store_id] = employee.location_id
        redirect_to sessions_store_main_path, :action => "main" , :notice => "Logged in!"
      else
        flash.now.alert = "Error in log in"
        render "index"
      end
    else
      render "signin"
      flash.now.alert = "Invalid username or password"
      
    end
  end

  def destroy
    session[:user_id] = nil
    session[:store_id] = nil
    session[:status] = nil
    
    respond_to do |format|
      format.html { redirect_to root_url, :notice => "Logged out!" }
      format.json { head :no_content }
    end
  end

  def store_main
    
  end
  
  def warehouse_main
  end

  def signin
  end
  
  def signout
  end
end
