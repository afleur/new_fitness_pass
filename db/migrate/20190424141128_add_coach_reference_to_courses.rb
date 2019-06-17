class AddCoachReferenceToCourses < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses, :coach, foreign_key: true
  end
end
