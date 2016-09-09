class AddNormalizedNameToContractors < ActiveRecord::Migration[5.0]
  def change
    add_column :contractors, :normalized_name, :text
  end
end
