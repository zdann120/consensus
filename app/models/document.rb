class Document < ApplicationRecord
  mount_uploader :file, ::StoredFileUploader
  belongs_to :user
  has_secure_token
  attribute :manually_approved, :boolean, default: false
  validates :title, :description, presence: true
  has_many :respondents, dependent: :destroy

  accepts_nested_attributes_for :respondents
end
