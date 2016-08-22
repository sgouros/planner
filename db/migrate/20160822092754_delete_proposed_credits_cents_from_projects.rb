class DeleteProposedCreditsCentsFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :proposed_credits_cents
  end
end
