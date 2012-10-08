class TransactionsController < ApplicationController

  include TransactionsHelper

  def index
    
    #remove last as it is not complete
    @transactions = Transaction.all - [Transaction.last]
    
    respond_to do |format|
      format.html # index.html
      format.json { render json: @transactions }
    end
  end
    
  def new
    @transaction = Transaction.new

    
    respond_to do |format|
      format.html # new.html
      format.json { render json: @transaction}
    end
  end

  def pay
    
  end

  def create
    #complete transaction before make new one
    current_transaction.update_attributes({:payment_type => 'cash'})
    #still error here, possibly validation confliction as payment_type will not save
    complete_transaction
    redirect_to current_transaction

  end

  def show
    @transaction = Transaction.find(params[:id])


    respond_to do |format|
      format.html #show.html
      format.json { render json: @transaction}
    end
  end


  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    
    respond_to do |format|
      format.html { redirect_to transactions_url}
      format.html { head :no_content }
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    
    if params[:transaction].has_key?('new_item')
      
      update_product_list(params[:transaction][:new_item])
      
      redirect_to current_transaction
    end
    
    #redirect_to current_transaction

  end
  
  def scan_item
    @transaction = current_transaction
  end


end
