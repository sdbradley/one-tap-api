class CreateOpportunityContactRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :opportunity_contact_roles do |t|
      t.string :contact_id
      t.string :opportunity_id
      t.string :role
      t.boolean :is_primary
      t.boolean :is_deleted
      t.datetime :last_activity_date
      t.datetime :created_at
      t.string :created_by
      t.datetime :updated_at
      t.datetime :last_modified_date
      t.string :last_modified_by
      t.string :system_mod_stamp

      t.timestamps
    end
  end
end
