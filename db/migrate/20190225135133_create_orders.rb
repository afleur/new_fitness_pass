class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :date
      t.integer :credits_value
      t.integer :cost

      t.timestamps
    end
  end
end
