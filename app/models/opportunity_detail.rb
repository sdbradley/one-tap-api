class OpportunityDetail < ApplicationRecord

  self.table_name = "vw_opportunitydetails"

  scope :with_partner_of, -> (partner_id) { where("partner__c = ?", partner_id) }
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
      partner: partner,
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
    OpportunityDetail.search(params)
  end
end
