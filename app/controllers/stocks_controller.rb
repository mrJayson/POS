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

        format.html { redirect_to controller: 'locations', action: current_location_type, :id => current_location.id, notice: 'Stock was successfully updated.'}
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
  
  def update
    @stock = Stock.find(params[:id])
    routing = ""
    pass = false
    #if movement of functions
    if params[:stock].has_key?(:movement_direction) && params[:stock].has_key?(:update_quantity)
      
      to_stock = @stock
      from_stock = Stock.find(:first, :conditions => ["location_id = ? AND product_id = ?", @stock.location.location.id, @stock.product_id])
      
      marginal_movement = params[:stock][:update_quantity].to_i
      
      if get_direction == "From shelf"
        marginal_movement *= -1
        #simulates products moving in opposite direction
      end
      
      to_stock = update_stock(to_stock, marginal_movement)
      set_marginal_quantity(marginal_movement)
      to_stock_valid = to_stock.valid?
      from_stock = update_stock(from_stock, -marginal_movement)
      set_marginal_quantity(-marginal_movement)
      from_stock_valid = from_stock.valid?
      
      if to_stock_valid && from_stock_valid
        pass = true
        to_stock.save
        from_stock.save
      else
        routing = "product_movement"
      end
    #if update quantity
    elsif params[:stock].has_key?(:update_quantity)
      #args update_quantity, stock object
      @stock = update_stock(@stock, params[:stock][:update_quantity].to_i)
      set_marginal_quantity(params[:stock][:update_quantity].to_i)
      
      if @stock.save
        
      else
        routing = "quantity"
      end
      
    #else
    else
      
    end
    
    if pass
      redirect_to controller: 'locations', action: current_location_type, :id => current_location.id, notice: 'Stock was successfully updated.'
    else
    render action: routing
    
    end
  end
  
=begin
  def update
    @stock = Stock.find(params[:id])
    
    #movement of products across locations
    #must refactor this function badly
    if params[:stock].has_key?(:movement_direction) && params[:stock].has_key?(:update_quantity)

      params[:stock].delete(:movement_direction)

      to_stock = @stock
      from_stock = Stock.find(:first, :conditions => ["location_id = ? AND product_id = ?", @stock.location.location.id, @stock.product_id])
      marginal_movement = params[:stock][:update_quantity].to_i
      
      if get_direction == "From shelf"
        marginal_movement *= -1
        #simulates products moving in opposite direction
      end
      
      to_stock.quantity += marginal_movement
      from_stock.quantity -= marginal_movement
      set_marginal_quantity(marginal_movement)
      respond_to do |format|

        if to_stock.valid?
          set_marginal_quantity(marginal_movement * -1)
          #need to *-1 for the 2nd validation check
          if from_stock.valid?
            to_stock.save
            from_stock.save
            format.html { redirect_to controller: 'locations', action: current_location_type, :id => current_location.id, notice: 'Stock was successfully updated.'}

            format.json { head :no_content }
          else
            #display errors here
            format.html {render action: "product_movement"}
            format.json { render json: @stock.errors, status: :unprocessable_entity }
          end
        end
      end
      
      
    #updating single sided quantity
    elsif params[:stock].has_key?(:update_quantity)
      set_marginal_quantity(params[:stock][:update_quantity].to_i)
      params[:stock][:quantity] = @stock.quantity + params[:stock][:update_quantity].to_i
      params[:stock].delete(:update_quantity)
    
      respond_to do |format|
        if @stock.update_attributes(params[:stock])
          set_marginal_quantity=0

          format.html { redirect_to controller: 'locations', action: current_location_type, :id => current_location.id, notice: 'Stock was successfully updated.'}

          format.json { head :no_content }
        else
          format.html {render action: "quantity"}
          format.json { render json: @stock.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        if @stock.update_attributes(params[:stock])
          set_marginal_quantity=0

          format.html { redirect_to controller: 'locations', action: current_location_type, :id => current_location.id, notice: 'Stock was successfully updated.'}

          format.json { head :no_content }
        else
          format.html {render action: "quantity"}
          format.json { render json: @stock.errors, status: :unprocessable_entity }
        end
      end
    end
  end
=end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
    
    respond_to do |format|
      format.html { redirect_to controller: 'locations', action: current_location_type, :id => current_store.id}
      format.html { head :no_content }
    end
  end
  
  def product_movement
    @stock = Stock.find(params[:id])
  end
end
