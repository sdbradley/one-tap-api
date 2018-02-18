class Contact < ApplicationRecord
  self.primary_key = "contact_id"

  belongs_to :account
  has_many :opportunity_contact_roles 

  scope :with_account_id, -> (account_id) { where({account_id: account_id}) }

  scope :search, -> (fields) {
    query = self
    query = query.with_account_id(fields[:account_id]) if fields[:account_id].present?
    query
  }

  def to_h
    {
      id: id,
      account_id: account_id,
      first_name: first_name,
      last_name: last_name,
      salutation: salutation,
      name: name,
      title: title,
      email: email,
      mobile_phone: mobile_phone
    }
  end

  def self.get(params)
    Contact.search(params)
  end
end
