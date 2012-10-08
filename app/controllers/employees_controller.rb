class EmployeesController < ApplicationController
  include ApplicationHelper
  include EmployeesHelper
  def index
    @employees = employees_at_store
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(params[:employee])
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

  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      redirect_to @emlpoyee
    else
      render 'edit'
    end
  end

  def destroy
    @employee = Employee.find(find[:id])
    @employee.destroy
    
    redirect_to employee_url
  end
end
