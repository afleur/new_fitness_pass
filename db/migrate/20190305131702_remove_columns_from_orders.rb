class RemoveColumnsFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :date, :date
    remove_column :orders, :credits_value, :integer
    remove_column :orders, :cost, :integer
  end
end
