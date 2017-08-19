class AddDecisionCommentsToRespondents < ActiveRecord::Migration[5.1]
  def change
    add_column :respondents, :decision_comments, :text
  end
end
