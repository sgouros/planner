class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.integer :project_id
      t.integer :subproject_id

      t.timestamps
    end
  end
end
