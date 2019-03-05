class Course < ApplicationRecord
  has_many :activities, dependent: :destroy
  has_many :credits
  mount_uploader :photo, PhotoUploader
  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_city?

  def full_address
    [street, npa, city].compact.join(', ')
  end
end
