class CreatePeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :periods do |t|
      t.string :fiscal_year_settings_id
      t.string :period_type
      t.datetime :start_date
      t.datetime :end_date
      t.string :quarter_label
      t.string :period_label
      t.integer :number
      t.boolean :is_forecasted_period
      t.string :system_mod_stamp

      t.timestamps
    end
  end
end
