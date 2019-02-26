class Session < ApplicationRecord
  belongs_to :course
  has_many :bookings
end
