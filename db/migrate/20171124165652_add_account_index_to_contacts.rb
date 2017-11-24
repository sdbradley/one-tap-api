class AddAccountIndexToContacts < ActiveRecord::Migration[5.0]
  def change
    add_index(:contacts, :account_id, using: 'btree')
  end
end
