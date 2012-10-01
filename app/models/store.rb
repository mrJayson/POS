class Store < ActiveRecord::Base
  attr_accessible :current_capacity, :max_capacity, :name
  
  has_many :shelves
  has_many :store_product_infos
  has_many :users
  
  validates_presence_of :current_capacity, :max_capacity, :name
  
  validates_uniqueness_of :max_capacity, :name
  

  
  
end
