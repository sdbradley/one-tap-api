class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :master_record_id
      t.string :account_id
      t.string :last_name
      t.string :first_name
      t.string :salutation
      t.string :name
      t.string :email
      t.string :title
      t.string :other_street
      t.string :other_city
      t.string :other_state
      t.string :other_postal_code
      t.string :other_country
      t.string :mailing_street
      t.string :mailing_city
      t.string :mailing_state
      t.string :mailing_postal_code
      t.string :mailing_country
      t.string :fax
      t.string :mobile_phone
      t.string :home_phone
      t.string :other_phone
      t.string :assistant_phone
      t.string :reports_to_id
      t.string :department
      t.string :assistant_name
      t.string :lead_source
      t.string :birthdate
      t.string :description
      t.string :owner_id
      t.boolean :is_deleted
      t.datetime :last_cu_request_date
      t.datetime :last_cu_update_date
      t.string :email_bounced_reason
      t.datetime :email_bounced_date
      t.boolean :receives_email_notifications__c
      t.boolean :is_primary_email_receipient__c
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
