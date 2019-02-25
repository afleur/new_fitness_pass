class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street, :string
    add_column :users, :NPA, :integer
    add_column :users, :city, :string
    add_column :users, :birth_date, :date
    add_reference :users, :order, foreign_key: true
    add_column :users, :credits_amount, :integer
  end
end
