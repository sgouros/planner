class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :code
      t.integer :amount
      t.date :transaction_date
      t.integer :payment_type_code
      t.integer :invoice_id

      t.timestamps
    end
  end
end
