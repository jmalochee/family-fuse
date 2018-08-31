class AddParentsToMembers < ActiveRecord::Migration[5.0]
  def change
  	change_table(:members) do |t|
	    t.string :sex
	    t.integer :father_id
	    t.integer :mother_id
	    t.integer :current_spouse_id
	    t.date :birth_date
	    t.date :death_date
	    t.remove :birthdate
	  end
  end
end
