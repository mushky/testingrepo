class DocumentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
  	@Documents = Document.all
  end
	
  def new
    @Document = Document.new
  end

  def create
    @Document = Document.new(document_params)
    if @Document.save
      redirect_to documents_path
    else
      render 'new'
    end
  end

  def show
  	@document = Document.find(params[:id])
	  send_data(@document.file_contents, type: @document.content_type, filename: @document.filename)
	end

  def edit
    @Document = Document.find(params[:id])
  end

  def update
    @Document = Document.find(params[:id])
    if @Document.update(Document_params)
      redirect_to documents_path
    else
      render 'edit'
    end
  end

  def delete
    @Document = Document.find(params[:id])
  end

  def destroy
    @Document = Document.find(params[:id])
    @Document.destroy

    redirect_to documents_path
  end

  private
    def document_params
      params.require(:document).permit(:filename, :file_contents, :content_type, :description, :file, :date)
    end

end

