module SoftDeletable
  extend ActiveSupport::Concern

  included do
    default_scope { where("`#{self.table_name}`.`is_deleted` = false") }

    # Overriding this so we can get dependent: :destroy callbacks
    def destroy
      self.is_deleted = true
      self.save!
      run_callbacks :destroy do
        delete
      end
    end
  end
end
