class Store < ActiveRecord::Base
  attr_accessible :current_capacity, :max_capacity, :name
end
