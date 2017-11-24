class AddLeadIdToLead < ActiveRecord::Migration[5.0]
  def self.up
    add_column(:leads, :lead_id, :string) unless column_exists?(:leads, :lead_id)
  end
  def self.down
    remove_column(:leads, :lead_id) if column_exists?(:leads, :lead_id)
  end
end
