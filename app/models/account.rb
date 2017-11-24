class Account < ApplicationRecord
    self.primary_key = "account_id"

    has_many :contacts
    has_many :opportunities
end
