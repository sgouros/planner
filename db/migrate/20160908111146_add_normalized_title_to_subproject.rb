class AddNormalizedTitleToSubproject < ActiveRecord::Migration[5.0]
  def change
    add_column :subprojects, :normalized_title, :text
  end
end
