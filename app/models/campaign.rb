class Campaign < ApplicationRecord

  self.table_name = "Campaign"
  self.primary_key = "Id"

  has_many :opportunities, foreign_key: "CampaignId"
  has_many :notes, foreign_key: "ParentId"
  belongs_to :account, foreign_key: "Partner__c"

  alias_attribute :parent_id, :ParentId
  alias_attribute :name, :Name
  alias_attribute :type, :Type
  alias_attribute :status, :Status
  alias_attribute :start_date, :StartDate
  alias_attribute :end_date, :EndDate
  alias_attribute :expected_revenue, :ExpectedRevenue
  alias_attribute :budgeted_cost, :BudgetedCost
  alias_attribute :actual_cost, :ActualCost
  alias_attribute :expected_response, :ExpectedResponse
  alias_attribute :number_sent, :NumberSent
  alias_attribute :description, :Description
  alias_attribute :number_of_leads, :NumberOfLeads
  alias_attribute :number_of_converted_leads, :NumberOfConvertedLeads
  alias_attribute :number_of_contacts, :NumberOfContacts
  alias_attribute :number_of_responses, :NumberOfResponses
  alias_attribute :number_of_opportunities, :NumberOfOpportunities
  alias_attribute :number_of_won_opportunities, :NumberOfWonOpportunities
  alias_attribute :amount_all_opportunities, :AmountAllOpportunities
  alias_attribute :amount_won_opportunities, :AmountWonOpportunities
  alias_attribute :number_of_converted_leads, :NumberOfConvertedLeads
  alias_attribute :stakeholder__c, :Stakeholder__c
  alias_attribute :partner__c, :Partner__c
  alias_attribute :campaign_news__c, :Campaign_News__c
  alias_attribute :iq001__c, :IQ001__c
  alias_attribute :iq002__c, :IQ002__c
  alias_attribute :iq003__c, :IQ003__c
  alias_attribute :iq004__c, :IQ004__c
  alias_attribute :iq005__c, :IQ005__c
  alias_attribute :iq006__c, :IQ006__c
  alias_attribute :iq007__c, :IQ007__c
  alias_attribute :iq008__c, :IQ008__c
  alias_attribute :iq009__c, :IQ009__c
  alias_attribute :iq010__c, :IQ010__c
  alias_attribute :iq011__c, :IQ011__c
  alias_attribute :iq012__c, :IQ012__c
  alias_attribute :iq013__c, :IQ013__c
  alias_attribute :iq014__c, :IQ014__c
  alias_attribute :iq015__c, :IQ015__c
  alias_attribute :is_active, :IsActive
  alias_attribute :created_at, :CreatedDate
  alias_attribute :is_deleted, :IsDeleted

  scope :with_id_of, -> (id) { where({id: id}) }
  scope :with_stakeholder_of, -> (stakeholder_id) { where({stakeholder__c: stakeholder_id}) }
  scope :with_partner_of, -> (partner_id) { where("Partner__c=?", partner_id) }
  scope :with_type_of, -> (type) { where({campaign_type: type}) }
  scope :with_status_of, -> (status) { where({status: status}) }
  scope :by_start_date, -> (date) { where("StartDate >= ?", date.to_i) }
  scope :by_end_date, -> (date) { where("EndDate < ?", date.to_i) }

  scope :with_statistics_sum, -> {
    select('SUM(Campaign.NumberSent) as NumberSent, 
    SUM(Campaign.NumberOfLeads) as NumberOfLeads, 
    SUM(Campaign.NumberOfConvertedLeads) as NumberOfConvertedLeads, 
    SUM(Campaign.NumberOfContacts) as NumberOfContacts, 
    SUM(Campaign.NumberOfResponses) as NumberOfResponses, 
    SUM(Campaign.NumberOfWonOpportunities) as NumberOfWonOpportunities').
    select('(select COUNT(id) from Opportunity where Opportunity.CampaignId=Campaign.Id and Opportunity.IsOTP_Approved__c=1) as NumberOfOpportunities')
  }
  scope :statistics, -> (fields) {
    query = self
    query = query.with_statistics_sum
    query = query.with_id_of(fields[:id]) if fields[:id].present?
    query = query.with_stakeholder_of(fields[:account_id]) if fields[:account_id].present? && fields[:role].present? && fields[:role]=='Stakeholder'
    query = query.with_partner_of(fields[:account_id]) if fields[:account_id].present? && fields[:role].present? && fields[:role]=='Partner'
    query = query.by_start_date(fields[:start_date]) if fields[:start_date].present?
    query = query.by_end_date(fields[:end_date]) if fields[:end_date].present?
    #query.group('Partner__c')
    query
  }

  scope :search, -> (fields) {
    query = self
    query = query.with_stakeholder_of(fields[:account_id]) if fields[:account_id].present? && fields[:role].present? && fields[:role]=='Stakeholder'
    query = query.with_partner_of(fields[:account_id]) if fields[:account_id].present? && fields[:role].present? && fields[:role]=='Partner'
    query = query.with_type_of(fields[:campaign_type]) if fields[:campaign_type].present?
    query = query.with_status_of(fields[:status]) if fields[:status].present?
    #query = query.by_start_date(fields[:start_date]) if fields[:start_date].present?
    #query = query.by_end_date(fields[:end_date]) if fields[:end_date].present?
    query
  }

  def to_h
  {
    id: id,
    parent_id: parent_id,
    name: name,
    type: type,
    status: status,
    start_date: start_date,
    end_date: end_date,
    expected_revenue: expected_revenue,
    budgeted_cost: budgeted_cost,
    actual_cost: actual_cost,
    expected_response: expected_response,
    number_sent: number_sent,
    description: description,
    number_of_leads: number_of_leads,
    number_of_converted_leads: number_of_converted_leads,
    number_of_contacts: number_of_contacts,
    number_of_responses: number_of_responses,
    number_of_opportunities: number_of_opportunities,
    number_of_won_opportunities: number_of_won_opportunities,
    amount_all_opportunities: amount_all_opportunities,
    amount_won_opportunities: amount_won_opportunities,
    stakeholder__c: stakeholder__c,
    partner__c: partner__c,
    campaign_news__c: campaign_news__c,
    iq001__c: iq001__c,
    iq002__c: iq002__c,
    iq003__c: iq003__c,
    iq004__c: iq004__c,
    iq005__c: iq005__c,
    iq006__c: iq006__c,
    iq007__c: iq007__c,
    iq008__c: iq008__c,
    iq009__c: iq009__c,
    iq010__c: iq010__c,
    iq011__c: iq011__c,
    iq012__c: iq012__c,
    iq013__c: iq013__c,
    iq014__c: iq014__c,
    iq015__c: iq015__c,
    is_active: is_active,
    created_at: created_at,
    is_deleted: is_deleted
  }
  end

  def to_stats_h
  {
    number_of_leads: number_of_leads,
    number_of_converted_leads: number_of_converted_leads,
    number_of_contacts: number_of_contacts,
    number_of_responses: number_of_responses,
    number_of_opportunities: number_of_opportunities,
    number_of_won_opportunities: number_of_won_opportunities
  }
  end
end
