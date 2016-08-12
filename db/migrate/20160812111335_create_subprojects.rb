class CreateSubprojects < ActiveRecord::Migration[5.0]
  def change
    create_table :subprojects do |t|
      t.string :code
      t.text :title
      t.integer :budget
      t.text :description
      t.integer :progress_code
      t.integer :prefecture_code
      t.date :incorporation_date
      t.string :incorporation_protocol
      t.text :amendments
      t.integer :phase_code
      t.integer :implementation_code
      t.integer :priority_code
      t.text :comments
      t.integer :proposed_badget
      t.integer :supervisor_body_id
      t.integer :project_id
      t.integer :accountable_id
      t.integer :implementation_body_id

      t.timestamps
    end
  end
end
