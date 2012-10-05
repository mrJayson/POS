class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string  :name
      t.integer :max_capacity
      t.string :location_type
      t.references :location

      t.timestamps
    end
  end
end
