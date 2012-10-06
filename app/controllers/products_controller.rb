class ProductsController < ApplicationController
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def new
    @product = Product.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  def create
    @product = Product.new(params[:product])
    
    
    respond_to do |format|
      if @product.save
        @stock = Stock.create ({
          location_id: Location.find_by_name('Warehouse').id,
          product_id: @product.id,
          standard_quantity: 0,
          quantity: 0,
          price: 0,
          benchmark: 0
        })
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
end
