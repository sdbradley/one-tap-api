class AddNumberOfResponsesToCampaigns < ActiveRecord::Migration[5.0]
  def change
    rename_column(:campaigns, :number_of_response, :number_of_responses) if column_exists? :campaigns, :number_of_response
  end
end
