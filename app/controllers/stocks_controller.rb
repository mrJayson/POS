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
    @stocks = Stock.new(params[:product])
    
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
    @stocks = Stock.find(params[:id])
  end

  def show
    @stocks = Stock.all

    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @stocks}
    end
  end

  def update
    @stocks = Stock.find(params[:id])
    
    respond_to do |format|
      if @stocks.update_attributes(params[:id])
        format.html {redirect_to stocks_path, notice: 'Stock was successfully updated.'}
        format.json { head :no_content }
      else
        format.html {render action: "edit"}
        format.hmtl { render json: @stocks.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stocks = Stock.find(params[:id])
    @stocks.destroy
    
    respond_to do |format|
      format.html { redirect_to stocks_url}
      format.html { head :no_content }
    end
  end
end
