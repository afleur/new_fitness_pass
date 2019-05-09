class RenameProfilePicToPhotoInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :profile_pic, :photo
  end
end
