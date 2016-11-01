class AddUserRoles < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :string
    
    remove_column :users, :admin
    remove_column :users, :manager
  end
end
