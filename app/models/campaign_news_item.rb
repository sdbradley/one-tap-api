class CampaignNewsItem < ApplicationRecord
  belongs_to :campaign

  scope :with_stakeholder_of, -> (stakeholder_id) { joins(:campaign).where(campaigns: {stakeholder__c: stakeholder_id}) }

  scope :search, -> (fields) {
    query = self
    query = query.with_stakeholder_of(fields[:stakeholder__c]) if fields[:stakeholder__c].present?
    query
  }

  def self.get(params)
    CampaignNewsItem.search(params)
  end
end
