class AddAttributesToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :user_id, :integer
    add_column :projects, :manager_id, :integer
    add_column :projects, :normalized_title, :text
  end
end
