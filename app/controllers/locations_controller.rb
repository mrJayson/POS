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
    
    if @location.location_type == "store"
      redirect_to locations_store_path
      
    elsif @location.location_type == "shelf"
      redirect_to locations_shelf_path
      
    elsif @location.location_type == "warehouse"
      redirect_to locations_warehouse_path
      
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @location }
      end
    end
  end
  
  def shelf
    
  end
  
  def store
    @location = current_store
    @stocks = @location.stocks
    @shelves = @location.locations #getting shelves
  end
  
  def warehouse
    
  end
end
