class LocationsController < ApplicationController
  include ApplicationHelper
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(params[:location])
    
    respond_to do |format|
      if @location.save
        format.html { redirect_to locations_path, notice: 'Location was successfully created.' }
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
      format.html { redirect_to locations_url }
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
    
    session[:current_location_type] = @location.location_type
    #change location type for different filtering of views
    
    if @location.location_type == "store"
      redirect_to controller: 'locations', action: 'store', :id => @location.id
      
    elsif @location.location_type == "shelf"
      
      redirect_to controller: 'locations', action: 'shelf', :id => @location.id
      
    elsif @location.location_type == "warehouse"
      redirect_to controller: 'locations', action: 'warehouse', :id => @location.id
      
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @location }
      end
    end
  end
  
  def shelf
    @location = Location.find(params[:id])#get shelf
    @stocks = @location.stocks#get products on shelf
    session[:shelf_id] = @location.id#assign the shelf_id for reference later on
    session[:current_location_type] = @location.location_type
    #change location type for different filtering of views
    
  end
  
  def store
    @location = @location = Location.find(params[:id])#get store
    @stocks = @location.stocks#get products instore
    @shelves = @location.locations #getting shelves
    session[:current_location_type] = @location.location_type
    #change location type for different filtering of views
  end
  
  def warehouse
    session[:current_location_type] = @location.location_type
    #change location type for different filtering of views
    
  end
end
