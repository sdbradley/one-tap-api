class Attachment < ApplicationRecord
    belongs_to :opportunity
    has_many :attachment_downloads
end
