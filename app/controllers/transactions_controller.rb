class TransactionsController < ApplicationController
  include ApplicationHelper

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
    @transaction = Transaction.new(params[:transaction])
    
    #restricting some validations before saving
    
    respond_to do |format|
      if @transaction.save
        format.json { render json: @transaction, status: :created, location: @transaction }
       
       #actions for what happens after it is the transaction is created
       
      else
        format.html { render action: "new" }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
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
end
