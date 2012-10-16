class MembersController < ApplicationController
  include MembersHelper
  include ApplicationHelper
  
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  #PD 3.4.1 The system is to allow for registration of new members
  def create
    @member = Member.new(params[:member])
    
    if @member.save
      redirect_to sessions_store_main_path
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
      redirect_to sessions_store_main_path
    else
      render "edit"
    end
  end

  #PD 3.4.6 The system supports customer member account deletion
  #deleteMember-grd1, member must exist
  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    
    redirect_to sessions_store_main_path
  end
end
