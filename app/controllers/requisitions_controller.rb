class RequisitionsController < ApplicationController
  def index
  	@requesitions = Requisition.all
  end

  def new
  	@requesition = Requisition.new
  end

  def show
  	@requesition = Requisition.find(params[:id])
  end

  def create
  	@requestion = Requisition.new
  	if @requestion.save
  	 redirect_to requistions_path
    else
      render 'new'
    end
  end

  
end
