class Employee < ActiveRecord::Base
  
  #DN 3.1 The system can support the management of staff
  
  has_secure_password
  
  has_many :transactions
  
  belongs_to :location
  
  attr_accessible :first_name, :last_name, :password_digest, :status, :user_name, :password, :password_confirmation, :location_id
  
  validates_presence_of :first_name, :last_name, :password_digest, :status, :user_name, :location
  
  #PD 3.1.2 All staff will be assigned  a unique employeeID
  validates_uniqueness_of :user_name
  
  #AccessControl-inv2, EmployeeStatus can be different
  #DN 3.2 The system can support access control for different users
  #PD 3.2.1 The system is to provide multi-level user classification
  #PD 3.2.2 The systme is to assign each user level different access permission within the system 
  validates_inclusion_of :status, :in => ["staff", "manager", "warehouse"]
  
  validate :employee_belongs_to_only_store
  
  #AccessLevel-inv3, Employee is a staff
  # 3.2.4 The system woud deny access for members who are not authorised 
  def employee_belongs_to_only_store
    errors.add(:location_id, "Employee does not belong to a store") if Location.find(location_id).location_type == "shelf"
  end
end
