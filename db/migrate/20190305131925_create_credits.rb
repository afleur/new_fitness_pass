class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.references :course
      t.references :user
      t.integer :value

      t.timestamps
    end
  end
end
