# Preview all emails at http://localhost:3000/rails/mailers/documents
class DocumentsPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/documents/respondent_added
  def respondent_added
    DocumentsMailer.respondent_added
  end

  # Preview this email at http://localhost:3000/rails/mailers/documents/response_recorded
  def response_recorded
    DocumentsMailer.response_recorded
  end

  # Preview this email at http://localhost:3000/rails/mailers/documents/all_approvals_obtained
  def all_approvals_obtained
    DocumentsMailer.all_approvals_obtained
  end

end
