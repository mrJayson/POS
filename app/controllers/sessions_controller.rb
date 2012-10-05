class SessionsController < ApplicationController
  
  def index
    #session[:user_id] = nil
    #session[:store_id] = nil
    #session[:shelf_id] = nil
    #session[:sesstion_type] = nil
  end
  
  def main
    
  end
  
  def create
    #get user
    user = User.find_by_user_name(params[:user_name])
    #check if user exists and if the password is correct
    if user && user.authenticate(params[:password])
      
      #store the user and which store they belong to in session
      session[:user_id] = user.id
      session[:store_id] = user.store_id
      session[:session_type] = user.account_type
      
      #redirect to the main sessions page
      if session[:session_type] == "store"
          redirect_to  sessions_main_path, :action => "main" , :notice => "Logged in!"
      elsif session[:session_type] = "warehouse"
        redirect_to warehouses_path
     
      else
        flash.now.alert = "Error in log in"
        render "index"
      end
    else
      flash.now.alert = "Invalid username or password"
      render "index"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:store_id] = nil
    session[:shelf_id] = nil
    #does not null ids so must be put in index, the log in screen
    
    respond_to do |format|
      format.html { redirect_to root_url, :notice => "Logged out!" }
      format.json { head :no_content }
    end
  end
end
