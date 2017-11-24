class AddRampUpCallCompletedToCampaign < ActiveRecord::Migration[5.0]
  def self.up
    add_column(:campaigns, :ramp_up_call_completed__c, :boolean) unless column_exists?(:campaigns, :ramp_up_call_completed__c)
  end
  def self.down
    remove_column(:campaigns, :ramp_up_call_completed__c) if column_exists?(:campaigns, :ramp_up_call_completed__c)
  end
end
