class Contact < ApplicationRecord
  self.primary_key = "contact_id"

  belongs_to :account

  scope :with_account_id, -> (account_id) { where({account_id: account_id}) }

  scope :search, -> (fields) {
    query = self
    query = query.with_account_id(fields[:account_id]) if fields[:account_id].present?
    query
  }

  def self.get(params)
    Contact.search(params)
  end
end
