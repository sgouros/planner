class CreateUndertakingCertificates < ActiveRecord::Migration[5.0]
  def change
    create_table :undertaking_certificates do |t|
      t.string :protocol
      t.date :start_date
      t.text :title
      t.integer :amount
      t.integer :subproject_id

      t.timestamps
    end
  end
end
