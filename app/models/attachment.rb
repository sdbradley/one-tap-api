class Attachment < ApplicationRecord

  self.table_name = "Attachment"
  self.primary_key = "Id"

  belongs_to :opportunity, foreign_key: "ParentId", primary_key: "Id"
  has_many :attachment_downloads

  alias_attribute :parent_id, :ParentId
  alias_attribute :owner_id, :OwnerId
  alias_attribute :name, :Name
  alias_attribute :content_type, :ContentType
  alias_attribute :body, :Body
  alias_attribute :body_length, :BodyLength
  alias_attribute :description, :Description

  def to_h
  {
    id: id,
    parent_id: parent_id,
    owner_id: owner_id,
    name: name,
    content_type: content_type,
    body_length: body_length,
    description: description,
    body: body,
    downloads: self.attachment_downloads
    #recording_downloaded_date: recording_downloaded_date,
    #recording_downloaded_by: recording_downloaded_by
  }
  end
end
