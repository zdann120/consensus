class RemoveApprovedFromRespondents < ActiveRecord::Migration[5.1]
  def change
    remove_column :respondents, :approved, :boolean
  end
end
