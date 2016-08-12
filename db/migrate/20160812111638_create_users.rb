class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :surname
      t.string :phone
      t.string :email
      t.string :hashed_password
      t.boolean :admin
      t.integer :organisation_id
      t.boolean :manager
      t.text :normalized_name
      t.text :normalized_surname

      t.timestamps
    end
  end
end
