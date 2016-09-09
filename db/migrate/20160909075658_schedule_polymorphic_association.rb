class SchedulePolymorphicAssociation < ActiveRecord::Migration[5.0]
  def change
    remove_column :schedules, :project_id
    remove_column :schedules, :subproject_id
    add_column    :schedules, :schedule_parent_id,    :integer
    add_column    :schedules, :schedule_parent_type,  :string
  end
end
