class DocumentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_document, except: [:index, :new, :create]

  def index
    @documents = current_user.documents
  end

  def show
  end

  def new
    @document = current_user.documents.new
  end

  def create
    @document = current_user.documents.new(document_params)
    if @document.save
      redirect_to @document, notice: 'Document created successfully!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @document.update(document_params)
      redirect_to @document, notice: 'Document edited.'
    else
      render :edit
    end
  end

  def destroy
    if @document.destroy
      redirect_to documents_url, notice: 'Document destroyed!'
    else
      render :show
    end
  end

  private

  def document_params
    params.require(:document).permit(:title, :description, :file,
                                    respondents_attributes: [:id, :name, :email, :_destroy])
  end

  def find_document
    @document = Document.find params[:id]
  end
end
