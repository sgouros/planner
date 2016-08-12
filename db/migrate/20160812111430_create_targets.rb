class CreateTargets < ActiveRecord::Migration[5.0]
  def change
    create_table :targets do |t|
      t.string :code
      t.text :description
      t.integer :measure_id

      t.timestamps
    end
  end
end
