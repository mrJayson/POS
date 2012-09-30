class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.integer :max_capacity
      t.integer :current_capacity,  :default => 0

      t.timestamps
    end
  end
end
