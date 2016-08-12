class CreateScheduleActions < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_actions do |t|
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :schedule_id

      t.timestamps
    end
  end
end
