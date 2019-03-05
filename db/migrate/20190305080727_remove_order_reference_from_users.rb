class RemoveOrderReferenceFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :order, foreign_key: true
  end
end
