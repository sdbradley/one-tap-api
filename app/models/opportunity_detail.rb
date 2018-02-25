class OpportunityDetail < ApplicationRecord

  self.table_name = "vw_opportunitydetails"
  has_many :notes, primary_key: "opportunity_id", foreign_key: "parent_id"
  has_many :opportunity_contact_roles, primary_key: "opportunity_id", foreign_key: "opportunity_id"
  has_many :attachments, primary_key: "opportunity_id", foreign_key: "parent_id"
  has_many :opportunity_feedbacks, primary_key: "opportunity_id", foreign_key: "opportunity_id"

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
      partner__c: partner__c,
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
      is_won: is_won,
      registered_deal_num__c: registered_deal_num__c,
      recording_downloaded_date: recording_downloaded_date,
      intelligence_question_001: intelligence_question_001,
      intelligence_question_002: intelligence_question_002,
      intelligence_question_003: intelligence_question_003,
      intelligence_question_004: intelligence_question_004,
      intelligence_question_005: intelligence_question_005,
      intelligence_question_006: intelligence_question_006,
      intelligence_question_007: intelligence_question_007,
      intelligence_question_008: intelligence_question_008,
      intelligence_question_009: intelligence_question_009,
      intelligence_question_010: intelligence_question_010,
      intelligence_question_011: intelligence_question_011,
      intelligence_question_012: intelligence_question_012,
      intelligence_question_013: intelligence_question_013,
      intelligence_question_014: intelligence_question_014,
      intelligence_question_015: intelligence_question_015,
      notes: notes.map(&:to_h),
      contacts: opportunity_contact_roles.map(&:to_h),
      attachments: attachments.map(&:to_h),
      feedback: opportunity_feedbacks.map(&:to_h),
      created_at: created_at
    }
  end

  def self.get(params)
    OpportunityDetail.search(params)
  end
end
