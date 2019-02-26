class Course < ApplicationRecord
  has_many :sessions, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
