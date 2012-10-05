class ShelvesController < ApplicationController
  # GET /shelves
  # GET /shelves.json
  include ShelvesHelper
  
  def index
    @shelves = shelves_in_store

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shelves }
    end
  end

  # GET /shelves/1
  # GET /shelves/1.json
  def show
    @shelf = Shelf.find(params[:id])
    
    #remember which aisle they are visiting
    session[:shelf_id] = params[:id]

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shelf }
    end
  end

  # GET /shelves/new
  # GET /shelves/new.json
  def new
    @shelf = Shelf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shelf }
    end
  end

  # GET /shelves/1/edit
  def edit
    @shelf = Shelf.find(params[:id])
  end

  # GET /shelves/1/limit
  def limit
    @shelf = Shelf.find(params[:id])
  end


  # POST /shelves
  # POST /shelves.json
  def create
    @shelf = Shelf.new(params[:shelf])
    @shelf.store_id = session[:store_id]
    @shelf.current_capacity = 0
    
    @shelf.aisle = get_available_aisle_number
    
    respond_to do |format|
      if @shelf.save
        format.html { redirect_to @shelf, notice: 'Shelf was successfully created.' }
        format.json { render json: @shelf, status: :created, location: @shelf }
      else
        format.html { render action: "new" }
        format.json { render json: @shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shelves/1
  # PUT /shelves/1.json
  def update
    @shelf = Shelf.find(params[:id])

    respond_to do |format|
      if @shelf.update_attributes(params[:shelf])
        format.html { redirect_to @shelf, notice: 'Shelf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shelves/1
  # DELETE /shelves/1.json
  def destroy
    @shelf = Shelf.find(params[:id])
    @shelf.destroy

    respond_to do |format|
      format.html { redirect_to shelves_url }
      format.json { head :no_content }
    end
  end
end
