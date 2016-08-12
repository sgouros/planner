class CreateContractUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :contract_updates do |t|
      t.string :update_version
      t.integer :amount
      t.date :start_date
      t.text :comments
      t.integer :contract_id

      t.timestamps
    end
  end
end
