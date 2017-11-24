class RenameAccountTypeField < ActiveRecord::Migration[5.0]
  def change
    rename_column(:accounts, :type, :account_type) if column_exists?(:accounts, :type)
  end
end
