class Attachment < ApplicationRecord
    belongs_to :opportunity, foreign_key: "parent_id", primary_key: "opportunity_id"
    has_many :attachment_downloads
    
    def to_h
      {
        id: id,
        attachment_id: attachment_id,
        parent_id: parent_id,
        owner_id: owner_id,
        name: name,
        content_type: content_type,
        body_length: body_length,
        description: description,
        recording_downloaded_date: recording_downloaded_date,
        recording_downloaded_by: recording_downloaded_by
      }
    end
end
