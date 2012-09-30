class OrderToWarehousesController < ApplicationController
  # GET /order_to_warehouses
  # GET /order_to_warehouses.json
  def index
    @order_to_warehouses = OrderToWarehouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @order_to_warehouses }
    end
  end

  # GET /order_to_warehouses/1
  # GET /order_to_warehouses/1.json
  def show
    @order_to_warehouse = OrderToWarehouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order_to_warehouse }
    end
  end

  # GET /order_to_warehouses/new
  # GET /order_to_warehouses/new.json
  def new
    @order_to_warehouse = OrderToWarehouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order_to_warehouse }
    end
  end

  # GET /order_to_warehouses/1/edit
  def edit
    @order_to_warehouse = OrderToWarehouse.find(params[:id])
  end

  # POST /order_to_warehouses
  # POST /order_to_warehouses.json
  def create
    @order_to_warehouse = OrderToWarehouse.new(params[:order_to_warehouse])

    respond_to do |format|
      if @order_to_warehouse.save
        format.html { redirect_to @order_to_warehouse, notice: 'Order to warehouse was successfully created.' }
        format.json { render json: @order_to_warehouse, status: :created, location: @order_to_warehouse }
      else
        format.html { render action: "new" }
        format.json { render json: @order_to_warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /order_to_warehouses/1
  # PUT /order_to_warehouses/1.json
  def update
    @order_to_warehouse = OrderToWarehouse.find(params[:id])

    respond_to do |format|
      if @order_to_warehouse.update_attributes(params[:order_to_warehouse])
        format.html { redirect_to @order_to_warehouse, notice: 'Order to warehouse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order_to_warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_to_warehouses/1
  # DELETE /order_to_warehouses/1.json
  def destroy
    @order_to_warehouse = OrderToWarehouse.find(params[:id])
    @order_to_warehouse.destroy

    respond_to do |format|
      format.html { redirect_to order_to_warehouses_url }
      format.json { head :no_content }
    end
  end
end
