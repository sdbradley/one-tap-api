class AddOpportunityIdToOpportunity < ActiveRecord::Migration[5.0]
  def self.up
    add_column(:opportunities, :opportunity_id, :string) unless column_exists?(:opportunities, :opportunity_id)
  end
  def self.down
    remove_column(:opportunities, :opportunity_id) if column_exists?(:opportunities, :opportunity_id)
  end
end
