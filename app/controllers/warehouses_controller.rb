class WarehousesController < ApplicationController
  # GET /warehouses
  # GET /warehouses.json
  def index
    @warehouses = Warehouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @warehouses }
    end
  end

  # GET /warehouses/1
  # GET /warehouses/1.json
  def show
    @warehouse = Warehouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @warehouse }
    end
  end


  # GET /warehouses/1/edit
  def edit
    @warehouse = Warehouse.find(params[:id])
  end


  # PUT /warehouses/1
  # PUT /warehouses/1.json
  def update
    @warehouse = Warehouse.find(params[:id])

    respond_to do |format|
      if @warehouse.update_attributes(params[:warehouse])
        format.html { redirect_to @warehouse, notice: 'Warehouse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

end
