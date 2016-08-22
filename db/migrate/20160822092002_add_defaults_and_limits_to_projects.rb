class AddDefaultsAndLimitsToProjects < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:projects, :credit_first_quarter_cents, '0')
    change_column_default :projects, :credit_second_quarter_cents, '0'
    change_column_default :projects, :credit_third_quarter_cents, '0'
    change_column_default :projects, :credit_fourth_quarter_cents, '0'
    change_column_default :projects, :payments_until_last_year_according_to_sae_cents, '0'
    change_column_default :projects, :ppi_payments_cents, '0'
    change_column_default :projects, :credit_limit_cents, '0'
    change_column_default :projects, :budget_cents, '0'

    change_column_default :projects, :proposed_credit_1_cents, '0'
    change_column_default :projects, :proposed_credit_2_cents, '0'
    change_column_default :projects, :proposed_credit_3_cents, '0'
    change_column_default :projects, :proposed_credit_4_cents, '0'
    change_column_default :projects, :proposed_credit_5_cents, '0'


    change_column :projects, :credit_first_quarter_cents, :integer, :limit => 13
    change_column :projects, :credit_second_quarter_cents, :integer, :limit => 13
    change_column :projects, :credit_third_quarter_cents, :integer, :limit => 13
    change_column :projects, :credit_fourth_quarter_cents, :integer, :limit => 13
    change_column :projects, :payments_until_last_year_according_to_sae_cents, :integer, :limit => 13
    change_column :projects, :ppi_payments_cents, :integer, :limit => 13
    change_column :projects, :proposed_credits_cents, :integer, :limit => 13
    change_column :projects, :credit_limit_cents, :integer, :limit => 13
    change_column :projects, :budget_cents, :integer, :limit => 13

    change_column :projects, :proposed_credit_1_cents, :integer, :limit => 13
    change_column :projects, :proposed_credit_2_cents, :integer, :limit => 13
    change_column :projects, :proposed_credit_3_cents, :integer, :limit => 13
    change_column :projects, :proposed_credit_4_cents, :integer, :limit => 13
    change_column :projects, :proposed_credit_5_cents, :integer, :limit => 13




  end
end
