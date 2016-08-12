class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :code
      t.text :title
      t.string :iis_code
      t.integer :prefecture_code
      t.date :incorporation_date
      t.string :incorporation_protocol
      t.integer :phase_code
      t.integer :priority_code
      t.integer :classification_code
      t.boolean :has_multiple_collective_decisions
      t.integer :credit_first_quarter
      t.integer :credit_second_quarter
      t.integer :credit_third_quarter
      t.integer :credit_fourth_quarter
      t.integer :payments_until_last_year_according_to_sae
      t.string :IBAN
      t.string :expense_code
      t.integer :PPI_payments
      t.text :proposed_credits
      t.integer :credit_limit_of_implementation_body
      t.text :comments
      t.integer :supervisor_body_id
      t.integer :act_id
      t.integer :collective_decision_id
      t.integer :budget
      t.text :budget_history

      t.timestamps
    end
  end
end
