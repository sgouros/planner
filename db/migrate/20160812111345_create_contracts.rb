class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.integer :amount_cents
      t.date :start_date
      t.integer :subproject_id
      t.integer :contractor_id

      t.timestamps
    end
  end
end
