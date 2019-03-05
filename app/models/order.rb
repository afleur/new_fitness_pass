class Order < ApplicationRecord
  has_many :credits
  monetize :price_cents
  monetize :amount_cents
end
