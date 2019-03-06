class RemoveColumnsFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :date, :date
    remove_column :orders, :credits_value, :integer
  end
end
