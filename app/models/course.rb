class Course < ApplicationRecord
  has_many :sessions, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  geocoded_by :street, :NPA, :city
  after_validation :geocode, if: :will_save_change_to_address?
end
