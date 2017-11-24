class Opportunity < ApplicationRecord

  self.primary_key = "opportunity_id"

  belongs_to :campaign
  has_many :notes, foreign_key: "parent_id"
  has_many :opportunity_feedbacks
  has_many :attachments

  scope :with_campaign_of, -> (campaign_id) { where({campaign_id: campaign_id}) }
  scope :by_start_date, -> (date) { where("meeting_date_time__c >= ?", date.to_i) }
  scope :by_end_date, -> (date) { where("meeting_date_time__c < ?", date.to_i) }

  scope :search, -> (fields) {
    query = self
    query = query.with_campaign_of(fields[:partner_id]) if fields[:partner_id].present?
    query = query.by_start_date(fields[:start_date]) if fields[:start_date].present?
    query = query.by_end_date(fields[:end_date]) if fields[:end_date].present?
    query
  }

  def self.get(params)
    Opportunity.search(params)
  end
end
