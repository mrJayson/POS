class StocksController < ApplicationController
  include ApplicationHelper
  include StocksHelper
  def index
    @stocks = Stock.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stocks }
    end
  end

  def new
    @stock = Stock.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stock}
    end
  end

  def create
    @stock = Stock.new(params[:stock])
    
    marginal_movement_quantity=0
    
    #create new stock at the given location
    #can refactor the if statement
    if current_location_type == "store"
      @stock.location = current_store
    elsif
      current_location_type == "shelf"
      @stock.location = current_shelf
    else
      @stock.location = warehouse
    end
    
    respond_to do |format|
      if @stock.save
        format.html { redirect_to current_location, notice: 'Stock was successfully updated.'}

        #format.html { redirect_to controller: 'locations', action: current_location_type, :id => current_location.id, notice: 'Stock was successfully updated.'}
        format.json { render json: @stock, status: :created, location: @stock }
      else
        format.html { render action: "new" }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def quantity
    @stock = Stock.find(params[:id])
    
  end

  def show
    @stock = Stock.find(params[:id])

    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @stock}
    end
  end
  
  #shelfOrder-grd1, grd5, grd2, grd4
  #PD 1.1.14
  #PD 1.1.15
  #DZ 1.1.2.1
  #PD 1.1.11
  def update
    @stock = Stock.find(params[:id])
    routing = "" # type string
    pass = false # true if update successful
    #if statement for product movement
    if params[:stock].has_key?(:movement_direction) && params[:stock].has_key?(:update_quantity)
      
      pass = move_stock(@stock, params[:stock][:movement_direction], params[:stock][:update_quantity].to_i)
      if pass
        
      else
        routing = "quantity"
      end
      
    #if statement for update quantity
    elsif params[:stock].has_key?(:update_quantity)
      #args update_quantity, stock object
      @stock = update_stock(@stock, params[:stock][:update_quantity].to_i)
      set_marginal_quantity(params[:stock][:update_quantity].to_i)
      
      if @stock.save
        #pass = true, now able to redirect out of update page
        pass = true
      else
        routing = "quantity"
      end

    else
      #normal edit if statement
      if @stock.update_attributes(params[:stock])
        pass = true
      else
        routing = "edit"
      end
      
    end

    if pass
      redirect_to current_location, notice: 'Stock was successfully updated.'
    else
      #if update not successful, refresh page
    render action: routing
    
    end
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
    
    respond_to do |format|
      format.html { redirect_to current_location}
      format.html { head :no_content }
    end
  end
  
  def product_movement
    @stock = Stock.find(params[:id])
  end
  

end
