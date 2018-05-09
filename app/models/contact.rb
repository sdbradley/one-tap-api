class Contact < ApplicationRecord

  self.primary_key = "Id"
  self.table_name = "Contact"

  belongs_to :account
  has_many :opportunity_contact_roles 

  alias_attribute :account_id, :AccountId
  alias_attribute :first_name, :FirstName
  alias_attribute :last_name, :LastName
  alias_attribute :salutation, :Salutation
  alias_attribute :name, :Name
  alias_attribute :title, :Title
  alias_attribute :email, :Email
  alias_attribute :phone, :Phone
  alias_attribute :mobile_phone, :MobilePhone
  alias_attribute :department, :Department
  alias_attribute :receives_email_notifications__c, :Receives_Email_Notifications__c
  alias_attribute :is_primary_email_recipient__c, :Is_Primary_Email_Recipient__c

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
      phone: phone,
      mobile_phone: mobile_phone,
      department: department,
      receives_email_notifications__c: receives_email_notifications__c,
      is_primary_email_recipient__c: is_primary_email_recipient__c
    }
  end

  def self.get(params)
    Contact.search(params)
  end
end
