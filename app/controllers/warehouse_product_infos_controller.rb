class WarehouseProductInfosController < ApplicationController
  # GET /warehouse_product_infos
  # GET /warehouse_product_infos.json
  def index
    @warehouse_product_infos = WarehouseProductInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @warehouse_product_infos }
    end
  end

  # GET /warehouse_product_infos/1
  # GET /warehouse_product_infos/1.json
  def show
    @warehouse_product_info = WarehouseProductInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @warehouse_product_info }
    end
  end

  # GET /warehouse_product_infos/new
  # GET /warehouse_product_infos/new.json
  def new
    @warehouse_product_info = WarehouseProductInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @warehouse_product_info }
    end
  end

  # GET /warehouse_product_infos/1/edit
  def edit
    @warehouse_product_info = WarehouseProductInfo.find(params[:id])
  end

  # POST /warehouse_product_infos
  # POST /warehouse_product_infos.json
  def create
    @warehouse_product_info = WarehouseProductInfo.new(params[:warehouse_product_info])

    respond_to do |format|
      if @warehouse_product_info.save
        format.html { redirect_to @warehouse_product_info, notice: 'Warehouse product info was successfully created.' }
        format.json { render json: @warehouse_product_info, status: :created, location: @warehouse_product_info }
      else
        format.html { render action: "new" }
        format.json { render json: @warehouse_product_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /warehouse_product_infos/1
  # PUT /warehouse_product_infos/1.json
  def update
    @warehouse_product_info = WarehouseProductInfo.find(params[:id])

    respond_to do |format|
      if @warehouse_product_info.update_attributes(params[:warehouse_product_info])
        format.html { redirect_to @warehouse_product_info, notice: 'Warehouse product info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @warehouse_product_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warehouse_product_infos/1
  # DELETE /warehouse_product_infos/1.json
  def destroy
    @warehouse_product_info = WarehouseProductInfo.find(params[:id])
    @warehouse_product_info.destroy

    respond_to do |format|
      format.html { redirect_to warehouse_product_infos_url }
      format.json { head :no_content }
    end
  end
end
