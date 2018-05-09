class Opportunity < ApplicationRecord

  self.table_name = "Opportunity"
  self.primary_key = "Id"

  belongs_to :campaign, foreign_key: "CampaignId"
  has_many :notes, foreign_key: "ParentId"
  has_many :opportunity_feedbacks
  has_many :attachments, foreign_key: "ParentId"
  has_many :opportunity_contact_roles, foreign_key: "OpportunityId"

  alias_attribute :account_id, :AccountId
  alias_attribute :campaign_id, :CampaignId
  alias_attribute :opportunity_id, :OpportunityId
  alias_attribute :name, :Name
  alias_attribute :description, :Description
  alias_attribute :stage_name, :StageName
  alias_attribute :amount, :Amount
  alias_attribute :probability, :Probability
  alias_attribute :close_date, :CloseDate
  alias_attribute :type, :Type
  alias_attribute :next_step, :NextStep
  alias_attribute :partner__c, :Partner__c
  alias_attribute :meeting_date_time__c, :Meeting_Date_Time__c
  alias_attribute :is_otp_approved__c, :IsOTP_Approved__c
  alias_attribute :registered_deal_num__c, :Registered_Deal_Num__c
  alias_attribute :created_at, :CreatedDate

  scope :with_partner_of, -> (partner_id) { joins(:campaign).where("opportunity.partner__c = ?", partner_id) }
  scope :by_start_date, -> (date) { where("meeting_date_time__c >= ?", date.to_i) }
  scope :by_end_date, -> (date) { where("meeting_date_time__c < ?", date.to_i) }
  scope :by_stage, -> (stage_name) { where("StageName=?", stage_name) }

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
      id: id,
      account_id: account_id,
      campaign_id: campaign_id,
      name: name,
      description: description,
      stage_name: stage_name,
      amount: amount,
      probability: probability,
      close_date: close_date,
      type: type,
      next_step: next_step,
      partner__c: partner__c,
      meeting_date_time__c: meeting_date_time__c,
      is_otp_approved__c: is_otp_approved__c,
      registered_deal_num__c: registered_deal_num__c,
      created_at: created_at
    }
  end

  def to_detail_h
    {
      id: id,
      account_id: account_id,
      campaign_id: campaign_id,
      name: name,
      description: description,
      stage_name: stage_name,
      amount: amount,
      probability: probability,
      close_date: close_date,
      type: type,
      next_step: next_step,
      partner__c: partner__c,
      meeting_date_time__c: meeting_date_time__c,
      created_at: created_at,
      notes: notes.map(&:to_h),
      contact_roles: opportunity_contact_roles.map(&:to_h),
      feedback: opportunity_feedbacks.map(&:to_h),
      attachments: attachments.map(&:to_h)
    }
  end

  def self.get(params)
    Opportunity.search(params)
  end
end
