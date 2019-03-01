class RenameSessiontoActivity < ActiveRecord::Migration[5.2]
  def change
    rename_table :sessions, :activities
  end
end
