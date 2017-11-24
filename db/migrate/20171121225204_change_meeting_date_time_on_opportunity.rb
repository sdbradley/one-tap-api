class ChangeMeetingDateTimeOnOpportunity < ActiveRecord::Migration[5.0]
  def change
    change_column(:opportunities, :meeting_date_time__c, :bigint) if column_exists?(:opportunities, :meeting_date_time__c)
  end
end
