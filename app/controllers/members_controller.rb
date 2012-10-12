class MembersController < ApplicationController
  include MembersHelper
  
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])
    
    if @member.save
      redirect_to members_path 
    else
      render "new"
    end
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    
    if @member.update_attributes(params[:member])
      redirect_to members_path
    else
      render "edit"
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    
    redirect_to members_path
  end
end
