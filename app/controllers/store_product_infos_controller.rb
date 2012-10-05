class StoreProductInfosController < ApplicationController
  # GET /store_product_infos
  # GET /store_product_infos.json
  include StoreProductInfosHelper
  def index
    @store_product_infos = products_in_store
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_product_infos }
    end
  end

  # GET /store_product_infos/1
  # GET /store_product_infos/1.json
  def show
    @store_product_info = StoreProductInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_product_info }
    end
  end

  # GET /store_product_infos/new
  # GET /store_product_infos/new.json
  def new
    @store_product_info = StoreProductInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_product_info }
    end
  end

  # GET /store_product_infos/1/edit
  def edit
    @store_product_info = StoreProductInfo.find(params[:id])
  end
  
    # GET /store_product_infos/1/price
  def price
    @store_product_info = StoreProductInfo.find(params[:id])
  end
  
    # GET /store_product_infos/1/quantity
  def quantity
    @store_product_info = StoreProductInfo.find(params[:id])
    #@store_product_info.quantity = @store_product_info.quantity + @store_product_info.update_quantity
  respond_to do |format|
    if @store_product_info.update_attributes(params[:store_product_info])
      self.quantity += self.update_quantity
    end
  end

  end

  # POST /store_product_infos
  # POST /store_product_infos.json
  def create
    @store_product_info = StoreProductInfo.new(params[:store_product_info])
    #assign default information to store_product_info
    @store_product_info.store_id = session[:store_id]
    @store_product_info.quantity = 0
      
    respond_to do |format|
      if @store_product_info.save
        format.html { redirect_to @store_product_info, notice: 'Store product info was successfully created.' }
        format.json { render json: @store_product_info, status: :created, location: @store_product_info }
      else
        format.html { render action: "new" }
        format.json { render json: @store_product_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store_product_infos/1
  # PUT /store_product_infos/1.json
  def update
    @store_product_info = StoreProductInfo.find(params[:id])
    
    respond_to do |format|
      if @store_product_info.update_attributes(params[:store_product_info])
        store = current_store
        store.current_capacity = sum_store_quantity
        store.save
        format.html { redirect_to @store_product_info, notice: 'Store product info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_product_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_product_infos/1
  # DELETE /store_product_infos/1.json
  def destroy
    @store_product_info = StoreProductInfo.find(params[:id])
    @store_product_info.destroy

    respond_to do |format|
      format.html { redirect_to store_product_infos_url }
      format.json { head :no_content }
    end
  end
end

