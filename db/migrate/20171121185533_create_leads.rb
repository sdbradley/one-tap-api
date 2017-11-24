class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :master_record_id
      t.string :last_name
      t.string :first_name
      t.string :salutation
      t.string :name
      t.string :email
      t.string :title
      t.string :company
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :phone
      t.string :website
      t.string :description
      t.string :lead_source
      t.string :status
      t.string :industry
      t.string :rating
      t.decimal :annual_revenue
      t.integer :number_of_employees
      t.boolean :is_converted
      t.datetime :converted_date
      t.string :converted_account_id
      t.string :converted_contact_id
      t.string :converted_opportunity_id
      t.boolean :is_unread_by_owner
      t.string :email_bounced_reason
      t.datetime :email_bounced_date
      t.string :owner__id
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
