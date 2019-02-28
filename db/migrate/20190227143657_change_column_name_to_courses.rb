class ChangeColumnNameToCourses < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :NPA, :npa
  end
end
