class RemoveEmailFromCoaches < ActiveRecord::Migration[5.2]
  def change
    remove_column :coaches, :email, :string
  end
end
