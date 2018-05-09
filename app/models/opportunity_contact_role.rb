class OpportunityContactRole < ApplicationRecord

    self.table_name = "OpportunityContactRole"

    belongs_to :contact, foreign_key: "ContactId"

    alias_attribute :contact_id, :ContactId
    alias_attribute :opportunity_id, :OpportunityId
    alias_attribute :role, :Role
    alias_attribute :is_primary, :IsPrimary
    alias_attribute :is_deleted, :IsDeleted

    scope :primary, -> (opportunity_id) { joins(:contact).where(opportunity_id: opportunity_id, is_primary: true) }
  
    def to_h
        {
          id: id,
          contact_id: contact_id,
          opportunity_id: opportunity_id,
          role: role,
          is_primary: is_primary,
          first_name: contact.first_name,
          last_name: contact.last_name,
          salutation: contact.salutation,
          name: contact.name,
          title: contact.title,
          email: contact.email,
          phone: contact.phone,
          mobile_phone: contact.mobile_phone,
          department: contact.department,
          receives_email_notifications__c: contact.receives_email_notifications__c,
          is_primary_email_recipient__c: contact.is_primary_email_recipient__c,
          is_deleted: is_deleted
        }
    end

end
