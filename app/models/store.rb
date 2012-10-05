class Store < ActiveRecord::Base
  attr_accessible :current_capacity, :max_capacity, :name
  
  has_many :shelves
  has_many :store_product_infos
  has_many :users
  
  validates_presence_of :current_capacity, :max_capacity, :name
  
  validates_uniqueness_of :name
  
  validates :max_capacity, :numericality => {:greater_than_or_equal_to => :current_capacity}
  

  
  
end
