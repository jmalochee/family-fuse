class CreateFamilyMembers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :families, :members, table_name: :family_members do |t|
      t.index :family_id
      t.index :member_id
      t.string :relationship
    end
  end
end
