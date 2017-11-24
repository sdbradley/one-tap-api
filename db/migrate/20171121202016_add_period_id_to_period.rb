class AddPeriodIdToPeriod < ActiveRecord::Migration[5.0]
  def self.up
    add_column(:periods, :period_id, :string) unless column_exists?(:periods, :period_id)
  end
  def self.down
    remove_column(:periods, :period_id) if column_exists?(:periods, :period_id)
  end
end
