class RenameSessionstoActivitiesInBookings < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :session_id, :activity_id
  end
end
