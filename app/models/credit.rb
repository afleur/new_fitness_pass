class Credit < ApplicationRecord
  belongs_to :user
  belongs_to :course
  # belongs_to :order
end
