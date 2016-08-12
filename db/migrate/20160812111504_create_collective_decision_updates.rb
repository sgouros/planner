class CreateCollectiveDecisionUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :collective_decision_updates do |t|
      t.string :protocol
      t.date :start_date
      t.text :description
      t.text :comments
      t.integer :collective_decision_id

      t.timestamps
    end
  end
end
