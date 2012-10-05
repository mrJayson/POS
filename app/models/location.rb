class Location < ActiveRecord::Base
  belongs_to :location, :class_name => 'Location'
  has_many :parent, :class_name => 'Location', :foreign_key => 'location_id'
  
  has_many :stock, :transaction, 
  
  belongs_to :parent, :class_name => "location", :foreign_key => "parent_id"
  attr_accessible :location_type, :max_capacity, :parent_id
end
