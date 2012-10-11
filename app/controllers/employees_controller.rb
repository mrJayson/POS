class EmployeesController < ApplicationController
  include ApplicationHelper
  include EmployeesHelper
  def index
    #locate all employees working for 'current_store'
    @employees = employees_at_store
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(params[:employee])
    #when creating new employee, the store they work at is assigned by the current_store logged in
    @employee.location_id = current_store.id
    if @employee.save
      redirect_to employees_path
    else
      render 'new'
    end
  end

  def show
    @employee = Employee.find(params[:id])
    
  end

  def edit
    @employee = Employee.find(params[:id])
    
  end
  
  def promote_employee
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    
    
    if @employee.update_attributes(params[:employee])
      redirect_to @employee
    else
      if params[:employee].has_key?(:status)
        render 'promote_employee'
      else
        render 'edit'
      end
      
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    
    redirect_to employees_path
  end
end
