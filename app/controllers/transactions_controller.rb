class TransactionsController < ApplicationController

  include TransactionsHelper

  def index
    
    @transactions = Transaction.all
    
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

    @transaction = Transaction.new({:payment_type => 'pending'})
    @transaction.save
    redirect_to @transaction

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
      item = Transaction::Transaction_Entry.new
      item.transaction_id = current_transaction.id
      item.product_id = params[:transaction][:new_item]#params returned should be id number
      @transaction.product_list << item
       
      if @transaction.save
        redirect_to current_transaction
      else
        redirect_to current_transaction
      end
      
      
    else
      format.html { render 'scan_item'}
      format.html { head :no_content }
      
    end
  end
  
  def scan_item
    @transaction = current_transaction
  end


end
