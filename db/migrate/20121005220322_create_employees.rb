class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string  :first_name
      t.string :last_name
      t.string :user_name
      t.string :password_digest
      t.string :status
      t.references :transaction

      t.timestamps
    end
  end
end
