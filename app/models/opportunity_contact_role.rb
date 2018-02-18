class OpportunityContactRole < ApplicationRecord

    belongs_to :contact

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
          mobile_phone: contact.mobile_phone
        }
    end

end
