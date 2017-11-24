class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :order_key
      t.string :account_id
      t.string :order_type
      t.text :description
      t.integer :num_appointments
      t.boolean :list_needed
      t.datetime :start_date
      t.boolean :is_deleted
      t.datetime :created_at
      t.string :created_by
      t.datetime :updated_at
      t.string :updated_by

      t.timestamps
    end
  end
end
