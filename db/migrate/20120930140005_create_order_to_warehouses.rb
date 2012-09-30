class CreateOrderToWarehouses < ActiveRecord::Migration
  def change
    create_table :order_to_warehouses do |t|
      t.string :order_status, :default => 'waiting'
      t.references :warehouse
      t.references :store
      t.references :warehouse_product_info
      t.references :store_product_info

      t.timestamps
    end
    add_index :order_to_warehouses, :warehouse_id
    add_index :order_to_warehouses, :store_id
    add_index :order_to_warehouses, :warehouse_product_info_id
    add_index :order_to_warehouses, :store_product_info_id
  end
end
