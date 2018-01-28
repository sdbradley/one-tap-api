class Opportunity < ApplicationRecord

  self.primary_key = "opportunity_id"

  belongs_to :campaign
  has_many :notes, foreign_key: "parent_id"
  has_many :opportunity_feedbacks
  has_many :attachments

  scope :with_partner_of, -> (partner_id) { joins(:campaigns).where({campaigns.partner__c => partner_id}) }
  scope :by_start_date, -> (date) { where("meeting_date_time__c >= ?", date.to_i) }
  scope :by_end_date, -> (date) { where("meeting_date_time__c < ?", date.to_i) }
  scope :by_stage, -> (stage_name) { where("stage_name=?", stage_name) }

  scope :search, -> (fields) {
    query = self
    query = query.with_partner_of(fields[:partner__c]) if fields[:partner__c].present?
    query = query.by_stage(fields[:stage_name]) if fields[:stage_name].present?
    query = query.by_start_date(fields[:start_date]) if fields[:start_date].present?
    query = query.by_end_date(fields[:end_date]) if fields[:end_date].present?
    query
  }

  def to_h
    {
      id: opportunity_id,
      account_id: account_id,
      campaign_id: campaign_id,
      opportunity_id: opportunity_id,
      name: name,
      description: description,
      stage_name: stage_name,
      amount: amount,
      probability: probability,
      close_date: close_date,
      opportunity_type: opportunity_type,
      next_step: next_step,
      meeting_date_time__c: meeting_date_time__c,
      created_at: created_at
    }
  end

  def self.get(params)
    Opportunity.search(params)
  end
end
