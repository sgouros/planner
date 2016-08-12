class CreateCollectiveDecisions < ActiveRecord::Migration[5.0]
  def change
    create_table :collective_decisions do |t|
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
