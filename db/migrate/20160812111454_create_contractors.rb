class CreateContractors < ActiveRecord::Migration[5.0]
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :fiscal_code
      t.string :tax_department
      t.text :address
      t.string :phone
      t.string :fax
      t.string :contact_person
      t.string :email
      t.text :comments

      t.timestamps
    end
  end
end
