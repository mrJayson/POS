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

  def create
    #complete transaction before make new one
    payment = params[:transaction][:payment].to_i
    #only able to update if payment is enough
    if payment >= get_total_price(current_transaction.product_list)
      current_transaction.update_attributes({:payment_type => params[:transaction][:payment_type]})
      # creates new empty transaction record
      complete_transaction
      #redirect_to current_transaction
    end
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
    
    if params.has_key?('transaction') && params[:transaction].has_key?('new_item')
      
      update_product_list(@transaction, params[:transaction][:new_item], params[:transaction][:amount_scanned].to_i)
      
      
      
      #redirect_to current_transaction
    elsif params.has_key?('transaction') && params[:transaction].has_key?('remove_item')
      
      remove_from_product_list(@transaction, params[:transaction][:remove_item])
      
    elsif params.has_key?('transaction') && params[:transaction].has_key?('member_id')
      #scanning in a member for the transaction
      add_member(@transaction, params[:transaction][:member_id])
       
    elsif params.has_key?('transaction') && params[:transaction].has_key?('payment')

      #redirect_to :controller => 'transactions', :action => 'create', :transaction => params[:transaction]
      #return
    else
      clear_product_list(@transaction)
    end
    
    redirect_to current_transaction

  end
  
  def scan_item
    @transaction = current_transaction
  end
  
  def remove_item
    @transaction = current_transaction
  end
  
  #def complete_transaction
  #  @transaction = current_transaction
  #end
  
  def void_transaction
    
  end
  
  def scan_member
    @transaction = current_transaction
  end


end
