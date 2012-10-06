class Employee < ActiveRecord::Base
  
  has_secure_password
  
  has_many :transactions
  
  belongs_to :location
  
  attr_accessible :first_name, :last_name, :password_digest, :status, :user_name, :password, :password_confirmation, :location_id
  
  validates_presence_of :first_name, :last_name, :password_digest, :status, :user_name, :location
  validates_uniqueness_of :user_name
  validates_inclusion_of :status, :in => ["staff", "manager", "warehouse"]
  
  validate :employee_belongs_to_only_store
  
  def employee_belongs_to_only_store
    errors.add(:location_id, "Employee does not belong to a store") if Location.find(location_id).location_type == "shelf"
  end
end
