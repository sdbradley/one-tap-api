class AttachmentDownload < ApplicationRecord
    belongs_to :attachment
    belongs_to :user
end
