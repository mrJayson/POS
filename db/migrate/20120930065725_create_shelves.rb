class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.integer :max_capacity
      t.integer :current_capacity, :default => 0
      t.references :store

      t.timestamps
    end
    add_index :shelves, :store_id
  end
end
