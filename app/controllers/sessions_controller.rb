class SessionsController < ApplicationController
  
  def index
    
  end
  
  def new
    
  end
  
  def show
    
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
    session[:user_id] = nil
    redirect_to new_session_path, :notice => "Logged out!"
  end
end
