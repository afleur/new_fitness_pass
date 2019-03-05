class RemoveCostFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :cost, :integer
  end
end
