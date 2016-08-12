class CreateAxes < ActiveRecord::Migration[5.0]
  def change
    create_table :axes do |t|
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
