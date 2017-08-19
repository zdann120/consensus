class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :documents

  def documents_for_approval
    respondents = Respondent.where(email: email)
    approval_documents = []
    if respondents.any?
      respondents.each do |r|
        approval_documents << r.document
      end
    end
    approval_documents
  end
end
