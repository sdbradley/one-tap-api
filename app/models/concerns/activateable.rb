module Activateable
  extend ActiveSupport::Concern

  included do
    default_scope { where("`#{self.table_name}`.`isActive` = true") }
  end
end
