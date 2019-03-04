class Activity < ApplicationRecord
  belongs_to :course
  has_many :bookings

  include PgSearch
  pg_search_scope :global_search,
    against: [ :start_time ],
    associated_against: {
      course: [ :name, :studio ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
