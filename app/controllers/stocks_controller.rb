class StocksController < ApplicationController
  def index
    @stocks =  Stock.all
    
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
    
    respond_to do |format|
      if @stock.save
        format.html { redirect_to stocks_path, notice: 'Stock was successfully created.' }
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

  def quantitychange
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
 
    
    respond_to do |format|
      
    if params[:stock].has_key?(:update_quantity)
        params[:stock][:quantity] = @stock.quantity + params[:stock][:update_quantity].to_i
        params[:stock].delete(:update_quantity)
    end
    
      if @stock.update_attributes(params[:stock])
        format.html {redirect_to stocks_path, notice: 'Stock was successfully updated.'}
        format.json { head :no_content }
      else
        format.html {render action: "edit"}
        format.hmtl { render json: @stock.errors, status: :unprocessable_entity }
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
