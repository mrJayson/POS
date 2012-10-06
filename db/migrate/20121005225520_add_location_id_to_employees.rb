class AddLocationIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :location_id, :integer
    
    add_index :employees, :location_id
  end
end
