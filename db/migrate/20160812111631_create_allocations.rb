class CreateAllocations < ActiveRecord::Migration[5.0]
  def change
    create_table :allocations do |t|
      t.string :protocol
      t.date :start_date
      t.integer :amount
      t.integer :project_id

      t.timestamps
    end
  end
end
