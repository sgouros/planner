class CreateExpenceForecasts < ActiveRecord::Migration[5.0]
  def change
    create_table :expence_forecasts do |t|
      t.integer :january
      t.integer :february
      t.integer :march
      t.integer :april
      t.integer :may
      t.integer :june
      t.integer :july
      t.integer :august
      t.integer :september
      t.integer :october
      t.integer :november
      t.integer :december
      t.integer :next_year
      t.integer :next_two_years
      t.integer :next_three_years
      t.integer :next_four_years
      t.integer :next_five_years
      t.integer :subproject_id

      t.timestamps
    end
  end
end
