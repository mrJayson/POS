class CreateShelfProductInfos < ActiveRecord::Migration
  def change
    create_table :shelf_product_infos do |t|
      t.integer :benchmark
      t.integer :quantity, :default => 0
      t.references :product
      t.references :shelf

      t.timestamps
    end
    add_index :shelf_product_infos, :product_id
    add_index :shelf_product_infos, :shelf_id
  end
end
