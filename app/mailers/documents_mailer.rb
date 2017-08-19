class DocumentsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.documents_mailer.respondent_added.subject
  #
  def respondent_added(respondent)
    @respondent = respondent
    mail to: @respondent.email,
      subject: "Approval requested for #{@respondent.document.file}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.documents_mailer.response_recorded.subject
  #
  def response_recorded
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.documents_mailer.all_approvals_obtained.subject
  #
  def all_approvals_obtained
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
