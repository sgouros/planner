class CreateAccountables < ActiveRecord::Migration[5.0]
  def change
    create_table :accountables do |t|
      t.string :surname
      t.string :name
      t.string :phone
      t.string :fax
      t.string :email
      t.integer :organisation_id

      t.timestamps
    end
  end
end
