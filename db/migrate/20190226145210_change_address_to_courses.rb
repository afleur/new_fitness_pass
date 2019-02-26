class ChangeAddressToCourses < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :address, :city
    add_column :courses, :street, :string
    add_column :courses, :NPA, :integer
  end
end
