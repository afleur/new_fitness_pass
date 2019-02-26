class AddStudioToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :studio, :string
  end
end
