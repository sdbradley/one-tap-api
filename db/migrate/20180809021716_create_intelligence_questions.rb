class CreateIntelligenceQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :intelligence_questions do |t|
      t.string :question
      t.string :question_number
      t.string :campaign_type
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
