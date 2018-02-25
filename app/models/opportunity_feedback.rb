class OpportunityFeedback < ApplicationRecord
    belongs_to :opportunity, foreign_key: "opportunity_id", primary_key: "opportunity_id"
    belongs_to :opportunity_detail, foreign_key: "opportunity_id", primary_key: "opportunity_id"

  def to_h
  {
      id: id,
      user_key: user_key,
      feedback: feedback,
      feedback_type: feedback_type,
      is_approved: is_approved,
      is_deleted: is_deleted
  }
  end

end
