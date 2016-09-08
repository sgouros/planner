class ChangeUserToAccountableInProject < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :user_id, :accountable_id
  end
end
