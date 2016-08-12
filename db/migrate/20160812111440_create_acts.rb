class CreateActs < ActiveRecord::Migration[5.0]
  def change
    create_table :acts do |t|
      t.string :code
      t.text :description
      t.integer :act_plan_id

      t.timestamps
    end
  end
end
