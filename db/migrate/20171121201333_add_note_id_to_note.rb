class AddNoteIdToNote < ActiveRecord::Migration[5.0]
  def self.up
    add_column(:notes, :note_id, :string) unless column_exists?(:notes, :note_id)
  end
  def self.down
    remove_column(:notes, :note_id) if column_exists?(:notes, :note_id)
  end
end
