class CreateFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :families do |t|
      t.string :surname, null: false
      t.string :matriarch, null: false
      t.string :patriarch, null: false
      t.string :state, null: false
      t.string :city, null: false
      t.date :anniversary
    end
  end
end
