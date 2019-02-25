class Course < ApplicationRecord
  has_many :sessions, dependent: :destroy
end
