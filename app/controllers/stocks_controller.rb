class StocksController < ApplicationController
  include ApplicationHelper
  include StocksHelper
  def index
    
    @stocks = Stock.all
    
    #if session_type == "store"
    #@stocks =  Stock.find(:all, :conditions => ["location_id = ?", current_store.id])
    #end
    
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
    
    marginal_quantity=0
    
    if current_location_type == "store"
    @stock.location = current_store
    
    else
    @stock.location = warehouse
    end
    
    respond_to do |format|
      if @stock.save
        if current_location_type == "store"
        format.html { redirect_to controller: 'locations', action: 'store', :id => current_store.id, notice: 'Stock was successfully created.' }
        else
        format.html { redirect_to controller: 'locations', action: 'store', :id => warehouse.id, notice: 'Stock was successfully created.' }  
        end
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
 
    if params[:stock].has_key?(:update_quantity)
      set_marginal_quantity(params[:stock][:update_quantity].to_i)
      params[:stock][:quantity] = @stock.quantity + params[:stock][:update_quantity].to_i
      params[:stock].delete(:update_quantity)
    end
    respond_to do |format|
      if @stock.update_attributes(params[:stock])
        set_marginal_quantity=0
        format.html {redirect_to controller: 'locations', action: 'store', :id => current_store.id, notice: 'Stock was successfully updated.'}
        format.json { head :no_content }
      else

        format.html {render action: "quantity"}
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
    
    respond_to do |format|
      format.html { redirect_to stocks_url}
      format.html { head :no_content }
    end
  end
end
