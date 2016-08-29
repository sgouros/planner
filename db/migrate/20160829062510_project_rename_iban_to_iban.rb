class ProjectRenameIbanToIban < ActiveRecord::Migration[5.0]
  def change
    rename_column(:projects, :IBAN, :iban)
  end
end
