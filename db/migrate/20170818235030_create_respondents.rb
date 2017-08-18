class CreateRespondents < ActiveRecord::Migration[5.1]
  def change
    create_table :respondents do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.belongs_to :document, foreign_key: true
      t.integer :status, default: 0, null: false
      t.boolean :approved, default: false, null: false

      t.timestamps
    end
  end
end
