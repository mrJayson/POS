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
    if params["update_quantity"]
      
      @store_product_info.quantity = @store_product_info.quantity.to_i + @store_product_info.update_quantity.to_i
      @store_product_info.params.delete :update_quantity
      if @store_product_info.save
        redirect_to store_product_infos_path
      else
        render 'quantity'
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
      #used if changing quantity, update_quantity is a virtual attribute
      #and cannot be stored in the database, must 
      if params[:store_product_info].has_key?(:update_quantity)
        params[:store_product_info][:quantity] = @store_product_info.quantity + params[:store_product_info][:update_quantity].to_i
        params[:store_product_info].delete(:update_quantity)
      end
      
      if @store_product_info.update_attributes(params[:store_product_info])
        
        #recalculate the sum quantity of the store by summing the store_product_infos
        current_store.update_attributes({:current_capacity => sum_store_quantity})
        
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
