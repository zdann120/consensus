require "rails_helper"

RSpec.describe DocumentsMailer, type: :mailer do
  describe "respondent_added" do
    let(:mail) { DocumentsMailer.respondent_added }

    it "renders the headers" do
      expect(mail.subject).to eq("Respondent added")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "response_recorded" do
    let(:mail) { DocumentsMailer.response_recorded }

    it "renders the headers" do
      expect(mail.subject).to eq("Response recorded")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "all_approvals_obtained" do
    let(:mail) { DocumentsMailer.all_approvals_obtained }

    it "renders the headers" do
      expect(mail.subject).to eq("All approvals obtained")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
