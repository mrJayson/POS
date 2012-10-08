module EmployeesHelper
  
  def employees_at_store
    return current_store.employees
  end
  
end
