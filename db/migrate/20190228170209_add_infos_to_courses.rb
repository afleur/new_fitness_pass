class AddInfosToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :infos, :string
  end
end
