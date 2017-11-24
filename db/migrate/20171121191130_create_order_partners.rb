class CreateOrderPartners < ActiveRecord::Migration[5.0]
  def change
    create_table :order_partners do |t|
      t.string :order_partner_key
      t.string :order_key
      t.string :name
      t.string :contact_name
      t.string :contact_phone
      t.string :geography
      t.integer :num_appointments
      t.boolean :list_needed
      t.boolean :is_deleted
      t.datetime :created_at
      t.string :created_by
      t.datetime :updated_at
      t.string :updated_by

      t.timestamps
    end
  end
end
