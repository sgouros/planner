class CreateOrganisations < ActiveRecord::Migration[5.0]
  def change
    create_table :organisations do |t|
      t.string :code
      t.text :name
      t.text :address
      t.string :phone
      t.string :fax
      t.string :contact_persion
      t.string :email
      t.boolean :is_this_my_organisation

      t.timestamps
    end
  end
end
