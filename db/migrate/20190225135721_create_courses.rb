class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :coach
      t.string :address
      t.integer :likes
      t.integer :kcal
      t.integer :duration
      t.integer :credits_cost

      t.timestamps
    end
  end
end
