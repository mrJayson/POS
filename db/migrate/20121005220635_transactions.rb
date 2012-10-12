class Transactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer  :loyalty_points_to_add
      t.string :payment_type
      t.string :product_list
      t.decimal :total_price
      t.references :location
      t.references :member
      t.references :employee


      t.timestamps
      
    end
    add_index :transactions, :location_id
    add_index :transactions, :member_id
    add_index :transactions, :employee_id
  end
end
