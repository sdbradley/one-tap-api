class AddIndexToContacts < ActiveRecord::Migration[5.0]
  def change
    add_index(:contacts, :contact_id, using: 'btree')
  end
end
