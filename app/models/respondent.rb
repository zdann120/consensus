class Respondent < ApplicationRecord
  include AASM
  belongs_to :document

  validates :name, :email, presence: true
  validates :email, uniqueness: { scope: :document_id }

  enum status: {
    pending: 0,
    viewed: 1,
    approved: 2,
    denied: 3
  }

  aasm column: :status, enum: true do
    state :pending, initial: true
    state :viewed, :approved, :denied

    event :view do
      transitions from: :pending, to: :viewed
    end

    event :approval do
      transitions from: [:pending, :viewed], to: :approved
    end

    event :denial do
      transitions from: [:pending, :viewed], to: :denied
    end
  end
end
