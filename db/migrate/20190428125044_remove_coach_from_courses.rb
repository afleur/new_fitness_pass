class RemoveCoachFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :coach, :string
  end
end
