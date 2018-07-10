class CampaignNewsItem < ApplicationRecord
  belongs_to :campaign

  scope :with_stakeholder_of, -> (stakeholder_id) { joins(:campaign).where(campaigns: {stakeholder__c: stakeholder_id}) }
  scope :with_partner_of, -> (partner_id) { joins(:campaign).where(campaigns: {partner__c: partner_id}) }
  scope :by_start_date, -> (date) { joins(:campaign).where("campaigns.start_date >= ?", date) }
  scope :by_end_date, -> (date) { joins(:campaign).where("campaigns.end_date < ?", date) }

  scope :search, -> (fields) {
    query = self
    query = query.with_stakeholder_of(fields[:stakeholder__c]) if fields[:stakeholder__c].present?
    query = query.with_partner_of(fields[:partner__c]) if fields[:partner__c].present?
    query = query.by_start_date(fields[:start_date]) if fields[:start_date].present?
    query = query.by_end_date(fields[:end_date]) if fields[:end_date].present?
  }

  def self.get(params)
    CampaignNewsItem.search(params)
  end
end
