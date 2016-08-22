class AddYearToCollectiveDecisions < ActiveRecord::Migration[5.0]
  def change
    add_column :collective_decisions,  :year, :integer
  end
end
