class SessionsController < ApplicationController
  
  def index
    session[:user_id] = nil
    session[:store_id] = nil
    session[:shelf_id] = nil
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
      
      #redirect to the main sessions page
      redirect_to  sessions_main_path, :action => "main" , :notice => "Logged in!"
    else
      
      flash.now.alert = "Invalid username or password"
      render "new"
    end
  end

  def destroy
    #session[:user_id] = nil
    #session[:store_id] = nil
    #session[:shelf_id] = nil
    #does not null ids so must be put in index, the log in screen
    
    respond_to do |format|
      format.html { redirect_to root_url, :notice => "Logged out!" }
      format.json { head :no_content }
    end
  end
end
