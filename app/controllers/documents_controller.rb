class DocumentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
  	@documents = Document.all.order("created_at DESC")
  end
	
  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
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
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])
    if @document.update(document_params)
      redirect_to @document
    else
      render 'edit'
    end
  end

  def delete
    @document = Document.find(params[:id])
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    redirect_to documents_path
  end

  private
    def document_params
      params.require(:document).permit(:filename, :file_contents, :content_type, :description, :date, :file)
    end

end

