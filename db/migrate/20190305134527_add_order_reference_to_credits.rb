class AddOrderReferenceToCredits < ActiveRecord::Migration[5.2]
  def change
    add_reference :credits, :order, foreign_key: true
  end
end
