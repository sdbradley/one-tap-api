class Campaign < ApplicationRecord

  self.primary_key = "campaign_id"

  has_many :opportunities
  has_many :campaign_news_items

  scope :with_stakeholder_of, -> (stakeholder_id) { where({stakeholder__c: stakeholder_id}) }
  scope :with_partner_of, -> (partner_id) { where({partner__c: partner_id}) }
  scope :with_type_of, -> (type) { where({campaign_type: type}) }
  scope :with_status_of, -> (status) { where({status: status}) }
  scope :by_start_date, -> (date) { where("start_date >= ?", date.to_i) }
  scope :by_end_date, -> (date) { where("end_date < ?", date.to_i) }

  scope :search, -> (fields) {
    query = self
    query = query.with_stakeholder_of(fields[:stakeholder__c]) if fields[:stakeholder__c].present?
    query = query.with_partner_of(fields[:partner__c]) if fields[:partner__c].present?
    query = query.with_type_of(fields[:campaign_type]) if fields[:campaign_type].present?
    query = query.with_status_of(fields[:status]) if fields[:status].present?
    query = query.by_start_date(fields[:start_date]) if fields[:start_date].present?
    query = query.by_end_date(fields[:end_date]) if fields[:end_date].present?
    query
  }

  def self.get(params)
    Campaign.search(params)
  end

  def self.get_statistics(params)
    Campaign.search(params).select("sum(number_sent) as number_sent", "sum(number_of_leads) as number_of_leads", "sum(number_of_converted_leads) as number_of_converted_leads", "sum(number_of_contacts) as number_of_contacts", "sum(number_of_response) as number_of_response", "sum(number_of_won_opportunities) as number_of_won_opportunities").first
  end
end
