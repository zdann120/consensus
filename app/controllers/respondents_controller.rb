class RespondentsController < ApplicationController
  before_action :set_document

  def new
    @respondent = @document.respondents.new
  end

  def create
    @respondent = @document.respondents.new(respondent_params)
    if @respondent.save
      DocumentsMailer.respondent_added(@respondent).deliver_now
      redirect_to @document, notice: 'Success!'
    else
      render :new
    end
  end

  private

  def set_document
    @document = Document.find params[:document_id]
  end

  def respondent_params
    params.require(:respondent).permit(:name, :email)
  end
end
