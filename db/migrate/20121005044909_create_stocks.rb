class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :location
      t.references :product
      t.integer :benchmark
      t.integer :standard_quantity
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
    add_index :stocks, :location_id
    add_index :stocks, :product_id
  end
end
