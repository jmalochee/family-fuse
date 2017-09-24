class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.string :email, null: false
      t.belongs_to :member
    end
  end
end
