class Note < ApplicationRecord
    self.primary_key = "note_id"
    belongs_to :campaign

    def to_h
        {
          id: note_id,
          parent_id: parent_id,
          owner_id: owner_id,
          title: title,
          body: body,
          created_at: created_at
        }
      end

end
