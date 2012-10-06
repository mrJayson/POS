class AddUserNameToMembers < ActiveRecord::Migration
  def change
    add_column :members, :user_name, :string
  end
end
