class CreateActPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :act_plans do |t|
      t.string :code
      t.text :description
      t.integer :target_id

      t.timestamps
    end
  end
end
