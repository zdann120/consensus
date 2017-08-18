class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.boolean :manually_approved
      t.string :token

      t.timestamps
    end
    add_index :documents, :token, unique: true
  end
end
