class AddCapacityToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :capacity, :integer
  end
end
