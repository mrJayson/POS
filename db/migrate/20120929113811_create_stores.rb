class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :max_capacity
      t.integer :current_capacity, :default => 0

      t.timestamps
    end
  end
end
