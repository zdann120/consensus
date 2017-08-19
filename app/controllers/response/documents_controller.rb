class Response::DocumentsController < ApplicationController
  def show
    @respondent = Respondent.find_by_access_key params[:id]
    @document = @respondent.document
  end

  def make_decision
    @respondent = Respondent.find_by_access_key params[:id]
    if params['commit'] == 'Approve'
      @respondent.approval!
      @respondent.update(decision_params)
    elsif params['commit'] == 'Deny'
      @respondent.denial!
      @respondent.update(decision_params)
    else
      raise 'Invalid commit.'
    end
      redirect_to response_document_path(@respondent.access_key)
  end

  private

  def decision_params
    params.require(:respondent).permit(:decision_comments)
  end
end
