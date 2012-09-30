class InsideOrdersController < ApplicationController
  # GET /inside_orders
  # GET /inside_orders.json
  def index
    @inside_orders = InsideOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inside_orders }
    end
  end

  # GET /inside_orders/1
  # GET /inside_orders/1.json
  def show
    @inside_order = InsideOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inside_order }
    end
  end

  # GET /inside_orders/new
  # GET /inside_orders/new.json
  def new
    @inside_order = InsideOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inside_order }
    end
  end

  # GET /inside_orders/1/edit
  def edit
    @inside_order = InsideOrder.find(params[:id])
  end

  # POST /inside_orders
  # POST /inside_orders.json
  def create
    @inside_order = InsideOrder.new(params[:inside_order])

    respond_to do |format|
      if @inside_order.save
        format.html { redirect_to @inside_order, notice: 'Inside order was successfully created.' }
        format.json { render json: @inside_order, status: :created, location: @inside_order }
      else
        format.html { render action: "new" }
        format.json { render json: @inside_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inside_orders/1
  # PUT /inside_orders/1.json
  def update
    @inside_order = InsideOrder.find(params[:id])

    respond_to do |format|
      if @inside_order.update_attributes(params[:inside_order])
        format.html { redirect_to @inside_order, notice: 'Inside order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inside_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inside_orders/1
  # DELETE /inside_orders/1.json
  def destroy
    @inside_order = InsideOrder.find(params[:id])
    @inside_order.destroy

    respond_to do |format|
      format.html { redirect_to inside_orders_url }
      format.json { head :no_content }
    end
  end
end
