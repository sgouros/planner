class AddMoneyCentsToProjects < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :credit_first_quarter, :credit_first_quarter_cents
    rename_column :projects, :credit_second_quarter, :credit_second_quarter_cents
    rename_column :projects, :credit_third_quarter, :credit_third_quarter_cents
    rename_column :projects, :credit_fourth_quarter, :credit_fourth_quarter_cents
    rename_column :projects, :payments_until_last_year_according_to_sae, :payments_until_last_year_according_to_sae_cents
    rename_column :projects, :PPI_payments, :ppi_payments_cents
    rename_column :projects, :proposed_credits, :proposed_credits_cents
    rename_column :projects, :credit_limit_of_implementation_body, :credit_limit_cents
    rename_column :projects, :budget, :budget_cents

    add_column :projects, :proposed_credit_1_cents, :integer
    add_column :projects, :proposed_credit_2_cents, :integer
    add_column :projects, :proposed_credit_3_cents, :integer
    add_column :projects, :proposed_credit_4_cents, :integer
    add_column :projects, :proposed_credit_5_cents, :integer

    add_column :projects, :proposed_credit_year_1, :string
    add_column :projects, :proposed_credit_year_2, :string
    add_column :projects, :proposed_credit_year_3, :string
    add_column :projects, :proposed_credit_year_4, :string
    add_column :projects, :proposed_credit_year_5, :string

    end
end
