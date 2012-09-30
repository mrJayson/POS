class ShelfProductInfosController < ApplicationController
  # GET /shelf_product_infos
  # GET /shelf_product_infos.json
  def index
    @shelf_product_infos = ShelfProductInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shelf_product_infos }
    end
  end

  # GET /shelf_product_infos/1
  # GET /shelf_product_infos/1.json
  def show
    @shelf_product_info = ShelfProductInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shelf_product_info }
    end
  end

  # GET /shelf_product_infos/new
  # GET /shelf_product_infos/new.json
  def new
    @shelf_product_info = ShelfProductInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shelf_product_info }
    end
  end

  # GET /shelf_product_infos/1/edit
  def edit
    @shelf_product_info = ShelfProductInfo.find(params[:id])
  end

  # POST /shelf_product_infos
  # POST /shelf_product_infos.json
  def create
    @shelf_product_info = ShelfProductInfo.new(params[:shelf_product_info])

    respond_to do |format|
      if @shelf_product_info.save
        format.html { redirect_to @shelf_product_info, notice: 'Shelf product info was successfully created.' }
        format.json { render json: @shelf_product_info, status: :created, location: @shelf_product_info }
      else
        format.html { render action: "new" }
        format.json { render json: @shelf_product_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shelf_product_infos/1
  # PUT /shelf_product_infos/1.json
  def update
    @shelf_product_info = ShelfProductInfo.find(params[:id])

    respond_to do |format|
      if @shelf_product_info.update_attributes(params[:shelf_product_info])
        format.html { redirect_to @shelf_product_info, notice: 'Shelf product info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shelf_product_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shelf_product_infos/1
  # DELETE /shelf_product_infos/1.json
  def destroy
    @shelf_product_info = ShelfProductInfo.find(params[:id])
    @shelf_product_info.destroy

    respond_to do |format|
      format.html { redirect_to shelf_product_infos_url }
      format.json { head :no_content }
    end
  end
end
