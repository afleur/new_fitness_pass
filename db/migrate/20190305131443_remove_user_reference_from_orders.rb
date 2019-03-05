class RemoveUserReferenceFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :user_id, :reference
  end
end
