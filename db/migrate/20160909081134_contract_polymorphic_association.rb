class ContractPolymorphicAssociation < ActiveRecord::Migration[5.0]
  def change
    remove_column :contracts, :subproject_id
    add_column    :contracts, :contract_parent_id,    :integer
    add_column    :contracts, :contract_parent_type,  :string
  end
end
