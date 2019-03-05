class RemoveCourseReferenceFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :course_id, :reference
  end
end
