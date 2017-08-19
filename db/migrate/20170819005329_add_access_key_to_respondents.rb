class AddAccessKeyToRespondents < ActiveRecord::Migration[5.1]
  def change
    add_column :respondents, :access_key, :string
    add_index :respondents, :access_key, unique: true
  end
end
