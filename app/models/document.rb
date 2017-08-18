class Document < ApplicationRecord
  belongs_to :user
  has_secure_token
  attribute :manually_approved, :boolean, default: false
  validates :title, :description, presence: true
  has_many :respondents
end
