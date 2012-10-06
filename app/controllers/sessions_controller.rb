class SessionsController < ApplicationController
  def create
    #get user
    employee = Employee.find_by_user_name(params[:user_name])
    #check if user exists and if the password is correct
    if employee && employee.authenticate(params[:password])
      
      #store the user and which store they belong to in session
      session[:user_id] = employee.id
      session[:status] = employee.status
      #session[:store_id] = user.store_id
      #session[:session_type] = user.account_type
      
      #redirect to the main sessions page
      if session[:status] == "staff"
        redirect_to locations_path
      elsif session[:status] == "manager"
          redirect_to sessions_main_path, :action => "main" , :notice => "Logged in!"
      elsif session[:status] = "warehouse"
        redirect_to products_path
     
      else
        #flash.now.alert = "Error in log in"
        #render "index"
      end
    else
      render "signin"
      flash.now.alert = "Invalid username or password"
      
    end
  end

  def destroy
    session[:user_id] = nil
    #session[:store_id] = nil
    #session[:shelf_id] = nil
    #does not null ids so must be put in index, the log in screen
    
    respond_to do |format|
      format.html { redirect_to root_url, :notice => "Logged out!" }
      format.json { head :no_content }
    end
  end

  def main
  end

  def signin
  end
end
