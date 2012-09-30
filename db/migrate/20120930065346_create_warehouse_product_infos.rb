class CreateWarehouseProductInfos < ActiveRecord::Migration
  def change
    create_table :warehouse_product_infos do |t|
      t.integer :quantity, :default => 0
      t.references :product
      t.references :warehouse

      t.timestamps
    end
    add_index :warehouse_product_infos, :product_id
    add_index :warehouse_product_infos, :warehouse_id
  end
end
