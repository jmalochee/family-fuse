class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
    	t.integer :kind, null: false
    	t.string :point, null: false
    	t.string :name, null: false
    	t.boolean :preferred, null: false, default: false
    	t.belongs_to :member
    end
  end
end
