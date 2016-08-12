class CreateMeasures < ActiveRecord::Migration[5.0]
  def change
    create_table :measures do |t|
      t.string :code
      t.text :description
      t.integer :axis_id

      t.timestamps
    end
  end
end
