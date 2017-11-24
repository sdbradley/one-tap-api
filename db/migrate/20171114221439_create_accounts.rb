class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :account_id
      t.text :name
      t.string :master_record_id
      t.string :type
      t.string :parent_id
      t.string :billing_street
      t.string :billing_city
      t.string :billing_state
      t.string :billing_postal_code
      t.string :billing_country
      t.string :shipping_street
      t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_postal_code
      t.string :shipping_country
      t.string :phone
      t.string :fax
      t.string :website
      t.string :industry
      t.decimal :annual_revenue
      t.integer :number_of_employees
      t.text :description
      t.string :owner_id
      t.boolean :is_otp_client
      t.string :stakeholder
      t.integer :number_of_leads
      t.string :latitude
      t.string :longitude
      t.datetime :created_at
      t.string :created_by
      t.datetime :updated_at
      t.datetime :last_modified_date
      t.string :last_modified_by
      t.string :system_mod_stamp
      t.datetime :last_activity_date
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
