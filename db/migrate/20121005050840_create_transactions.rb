class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :location
      t.references :employee
      t.references :member
      t.string :product_list
      t.integer :total_price
      t.integer :loyalty_points_to_add
      t.string :payment_type

      t.timestamps
    end
    add_index :transactions, :location_id
    add_index :transactions, :employee_id
    add_index :transactions, :member_id
  end
end
