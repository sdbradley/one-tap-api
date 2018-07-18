class Account < ApplicationRecord

    self.table_name = "Account"
    self.primary_key = "Id"

    has_many :contacts
    has_many :opportunities, foreign_key: "Partner_Account_Assigned__c"
    has_many :campaigns, foreign_key: "Partner__c"

    alias_attribute :parent_id, :ParentId
    alias_attribute :name, :Name
    alias_attribute :type, :Type
    alias_attribute :phone, :Phone
    alias_attribute :fax, :Fax
    alias_attribute :website, :Website
    alias_attribute :industry, :Industry
    alias_attribute :annual_revenue, :AnnualRevenue
    alias_attribute :number_of_employees, :NumberOfEmployees
    alias_attribute :description, :Description
    alias_attribute :billing_street, :BillingStreet
    alias_attribute :billing_city, :BillingCity
    alias_attribute :billing_state, :BillingState
    alias_attribute :billing_postal_code, :BillingPostalCode
    alias_attribute :billing_country, :BillingCountry
    alias_attribute :shipping_street, :ShippingStreet
    alias_attribute :shipping_city, :ShippingCity
    alias_attribute :shipping_state, :ShippingState
    alias_attribute :shipping_postal_code, :ShippingPostalCode
    alias_attribute :shipping_country, :ShippingCountry
    alias_attribute :master_record_id, :MasterRecordId
    alias_attribute :is_otp_client_c, :IsOTPClient__c
    alias_attribute :is_deleted, :IsDeleted

    def to_h(with: [])
       {
            id: id,
            parent_id: parent_id,
            name: name,
            type: type,
            phone: phone,
            fax: fax,
            website: website,
            industry: industry,
            annual_revenue: annual_revenue,
            number_of_employees: number_of_employees,
            description: description,
            billing_street: billing_street,
            billing_city: billing_city,
            billing_state: billing_state,
            billing_postal_code: billing_postal_code,
            billing_country: billing_country,
            shipping_street: shipping_street,
            shipping_city: shipping_city,
            shipping_state: shipping_state,
            shipping_postal_code: shipping_postal_code,
            shipping_country: shipping_country,
            master_record_id: master_record_id,
            is_deleted: is_deleted
        }.tap do |hash|
            hash[:contacts] = contacts.uniq.map(&:to_h) if with.include?(:contacts)
        end
    end
end
