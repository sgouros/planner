class AddCentsToEveryAmount < ActiveRecord::Migration[5.0]
  def change
    rename_column :allocations,               :amount,            :amount_cents
    rename_column :contract_updates,          :amount,            :amount_cents
    rename_column :expence_forecasts,         :january,           :january_cents
    rename_column :expence_forecasts,         :february,          :february_cents
    rename_column :expence_forecasts,         :march,             :march_cents
    rename_column :expence_forecasts,         :april,             :april_cents
    rename_column :expence_forecasts,         :may,               :may_cents
    rename_column :expence_forecasts,         :june,              :june_cents
    rename_column :expence_forecasts,         :july,              :july_cents
    rename_column :expence_forecasts,         :august,            :august_cents
    rename_column :expence_forecasts,         :september,         :september_cents
    rename_column :expence_forecasts,         :october,           :october_cents
    rename_column :expence_forecasts,         :november,          :november_cents
    rename_column :expence_forecasts,         :december,          :december_cents
    rename_column :expence_forecasts,         :next_year,         :next_year_cents
    rename_column :expence_forecasts,         :next_two_years,    :next_two_years_cents
    rename_column :expence_forecasts,         :next_three_years,  :next_three_years_cents
    rename_column :expence_forecasts,         :next_four_years,   :next_four_years_cents
    rename_column :expence_forecasts,         :next_five_years,   :next_five_years_cents
    rename_column :invoices,                  :amount,            :amount_cents
    rename_column :payments,                  :amount,            :amount_cents
    rename_column :subprojects,               :budget,            :budget_cents
    rename_column :subprojects,               :proposed_badget,   :proposed_budget_cents
    rename_column :undertaking_certificates,  :amount,            :amount_cents
  end
end
