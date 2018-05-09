class Note < ApplicationRecord

  self.table_name = "Note"
  self.primary_key = "Id"
  
  belongs_to :campaign, foreign_key: "ParentId"
  belongs_to :opportunity, foreign_key: "ParentId"

  alias_attribute :parent_id, :ParentId
  alias_attribute :owner_id, :OwnerId
  alias_attribute :title, :Title
  alias_attribute :body, :Body
  alias_attribute :is_private, :IsPrivate
  alias_attribute :is_deleted, :IsDeleted
  alias_attribute :created_at, :CreatedDate

  scope :with_stakeholder_of, -> (stakeholder_id) { joins(:campaign).where(campaign: {stakeholder__c: stakeholder_id}) }
  scope :with_partner_of, -> (partner_id) { joins(:campaign).where(campaign: {partner__c: partner_id}) }
  scope :by_start_date, -> (date) { joins(:campaign).where("campaign.StartDate >= ?", date.to_i) }
  scope :by_end_date, -> (date) { joins(:campaign).where("campaign.EndDate < ?", date.to_i) }

  scope :search, -> (fields) {
    query = self
    query = query.with_stakeholder_of(fields[:stakeholder__c]) if fields[:stakeholder__c].present?
    query = query.with_partner_of(fields[:partner__c]) if fields[:partner__c].present?
    query = query.by_start_date(fields[:start_date]) if fields[:start_date].present?
    query = query.by_end_date(fields[:end_date]) if fields[:end_date].present?
  }

  def self.get(params)
    Note.search(params)
  end

  def to_h
  {
    id: id,
    parent_id: parent_id,
    owner_id: owner_id,
    title: title,
    body: body,
    is_private: is_private,
    is_deleted: is_deleted,
    created_at: created_at
  }
  end
end
