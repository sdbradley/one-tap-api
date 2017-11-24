class CreateOpportunityFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :opportunity_feedbacks do |t|
      t.string :opportunity_feedback_key
      t.string :opportunity_id
      t.string :user_key
      t.text :feedback
      t.string :feedback_type
      t.boolean :is_approved
      t.boolean :is_deleted
      t.datetime :created_at
      t.string :created_by
      t.datetime :updated_at
      t.string :updated_by

      t.timestamps
    end
  end
end
