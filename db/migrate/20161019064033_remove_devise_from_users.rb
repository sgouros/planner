class RemoveDeviseFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :email
    remove_column :users, :encrypted_password
    remove_column :users, :reset_password_token
    remove_column :users, :reset_password_sent_at
    remove_column :users, :remember_created_at
    remove_column :users, :sign_in_count
    remove_column :users, :current_sign_in_at
    remove_column :users, :last_sign_in_at
    remove_column :users, :current_sign_in_ip
    remove_column :users, :last_sign_in_ip

    add_column :users,  :email, :string
    add_index  :users,  :email, unique: true

    add_column :users,  :hashed_password, :string

  end
end
