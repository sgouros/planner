class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :code
      t.text :description
      t.date :date_of_issue
      t.string :contractor_fiscal_code
      t.string :contractor_name
      t.integer :amount
      t.date :payoff_deadline
      t.integer :undertaking_certificate_id

      t.timestamps
    end
  end
end
