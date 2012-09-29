class CreateStoreProductInfos < ActiveRecord::Migration
  def change
    create_table :store_product_infos do |t|
      t.references :product
      t.references :store
      t.float :price
      t.integer :quantity, :default => 0

      t.timestamps
    end
    add_index :store_product_infos, :product_id
    add_index :store_product_infos, :store_id
  end
end
