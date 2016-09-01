class FixTypoInContactPerson < ActiveRecord::Migration[5.0]
  def change
    rename_column(:organisations, :contact_persion, :contact_person)
  end
end
