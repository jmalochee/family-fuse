class ChangeFieldNameType < ActiveRecord::Migration[5.0]
  def change
    rename_column :addresses, :type, :kind
    rename_column :phones, :type, :kind
    rename_column :emails, :type, :kind
  end
end
