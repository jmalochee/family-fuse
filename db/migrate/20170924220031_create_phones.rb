class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :phone, null: false
      t.string :kind, null: false
      t.belongs_to :member
    end
  end
end
