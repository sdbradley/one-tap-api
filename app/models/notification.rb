class Notification < ApplicationRecord

    has_one :opportunity, primary_key: "data", foreign_key: "opportunity_id"

    scope :by_start_date, -> (date) { where("sent_on >= ?", date.to_i) }
    scope :by_end_date, -> (date) { where("sent_on < ?", date.to_i) }

    scope :search, -> (fields) {
      query = self
      query = query.by_start_date(fields[:start_date]) if fields[:start_date].present?
      query = query.by_end_date(fields[:end_date]) if fields[:end_date].present?
      query = query.joins(:opportunity)
      query
    }
  
    def to_h
      {
        id: id,
        notification_key: notification_key,
        method: method,
        notification_type: notification_type,
        data: data,
        opportunity: opportunity.name,
        was_sent: was_sent,
        sent_on: sent_on,
        is_deleted: is_deleted,
        created_at: created_at
      }
    end
  
    def self.get(params)
      Notification.search(params)
    end
  end
  