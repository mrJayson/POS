class SessionsController < ApplicationController
  
  def index
    
  end
  
  def new
    
  end
  
  def create
    user = User.find_by_user_name(params[:user_name])
    if user && user.authenticate(params[:password])
      
      session[:user_id] = user.id
      redirect_to stores_path, :notice => "Logged in!"
    else
      
      flash.now.alert = "Invalid username or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    edirect_to root_url, :notice => "Logged out!"
  end
end
