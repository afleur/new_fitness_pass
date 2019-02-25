class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :session
  has_many :invitations
end
