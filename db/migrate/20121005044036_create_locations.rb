class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :max_capacity
      t.string :location_type
      t.integer :parent_id

      t.timestamps
    end
  end
end
