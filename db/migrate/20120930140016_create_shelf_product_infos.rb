class CreateShelfProductInfos < ActiveRecord::Migration
  def change
    create_table :shelf_product_infos do |t|
      t.references :product
      t.references :shelf
      t.integer :quantity, :default => 0

      t.timestamps
    end
    add_index :shelf_product_infos, :product_id
  end
end
