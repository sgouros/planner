class DropAccountables < ActiveRecord::Migration[5.0]
  def change
    drop_table :accountables
  end
end
