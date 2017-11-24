class AddIndexToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_index(:accounts, :account_id, using: 'btree')
    add_index(:accounts, :account_type, using: 'btree')
  end
end
