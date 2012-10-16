class LocationsController < ApplicationController
  include ApplicationHelper
  include LocationsHelper
  include StocksHelper
  def index
    #this page is not needed, should never reach this page
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  #PD 1.2.2 The System allows for adjustments to be made to the layout of shelves 
  def create
    @location = Location.new(params[:location])
    
    @location.location = current_location
    @location.location_type = "shelf"
    
    respond_to do |format|
      if @location.save
        format.html { redirect_to current_location, notice: 'Location was successfully created.' }
        format.json { render json: @location, status: :created, location: @location }
      else
        format.html { render action: "new" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to current_location }
      format.json { head :no_content }
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to @location, notice: 'location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @location = Location.find(params[:id])
    #change location type for different filtering of views
    session[:current_location_type] = nil
    session[:shelf_id] = nil
    
    #redirects to either shelf, store or warehouse controller
    redirect_to controller: 'locations', action: @location.location_type, id: @location.id
  end
  
  def shelf
    @location = Location.find(params[:id])#get shelf
    @stocks = @location.stocks#get products on shelf
    session[:shelf_id] = @location.id#assign the shelf_id for reference later on
    session[:current_location_type] = @location.location_type
    #change location type for different filtering of views
  end
  
  def store
    @location = Location.find(params[:id])#get store
    @stocks = @location.stocks#get products instore
    @shelves = @location.locations #getting shelves
    session[:current_location_type] = @location.location_type
    #change location type for different filtering of views
  end
  
  def warehouse
    @location = @location = Location.find(params[:id])#get warehouse
    @stocks = @location.stocks#get products in warehouse/all products
    session[:current_location_type] = @location.location_type
    #change location type for different filtering of views
  end
  
  def order
    #@store = current_store
    @location = Location.find(params[:id])
    @order_list = get_order_list(@location)
  end
  
  def order_movement
    #order_list is an array of stocks
    location = Location.find(params[:id])
    order_list = get_order_list(location)
    order_list.each do |stock|

      move_stock(stock, "To", amount_to_move(stock))
    end
    redirect_to location
  end
end
