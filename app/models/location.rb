class Location < ActiveRecord::Base
  
  belongs_to :location
  
  has_many :locations
  
  has_many :stocks
  has_many :transactions
  

  attr_accessible :name, :location_type, :max_capacity, :parent_id, :location_id
  
  
  def location_types
    return ["Store", "Shelf"]
  end
end
