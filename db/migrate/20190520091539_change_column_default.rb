class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :activities, :capacity, 5
  end
end
