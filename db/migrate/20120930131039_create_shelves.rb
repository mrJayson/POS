class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.integer :aisle
      t.integer :max_capacity
      t.integer :current_capacity
      t.references :store

      t.timestamps
    end
    add_index :shelves, :store_id
  end
end
