class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      t.string :first_name
      t.string :last_name
      t.string :category
      t.datetime :birth_date
      t.string :photo_url
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
