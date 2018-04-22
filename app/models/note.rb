class Note < ApplicationRecord

  self.table_name = "Note"
  self.primary_key = "Id"
  
  belongs_to :campaign, foreign_key: "ParentId"
  belongs_to :opportunity, foreign_key: "ParentId"

  alias_attribute :parent_id, :ParentId
  alias_attribute :owner_id, :OwnerId
  alias_attribute :title, :Title
  alias_attribute :body, :Body
  alias_attribute :is_private, :IsPrivate
  alias_attribute :is_deleted, :IsDeleted
  alias_attribute :created_at, :CreatedDate

  def to_h
  {
    id: id,
    parent_id: parent_id,
    owner_id: owner_id,
    title: title,
    body: body,
    is_private: is_private,
    is_deleted: is_deleted,
    created_at: created_at
  }
  end
end
