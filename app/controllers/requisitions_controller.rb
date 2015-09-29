class RequisitionsController < ApplicationController
  def index
  	@requesitions = Requisition.all
  end

  def new
  	@requesition = Requestion.new
  end

  def show
  	@requesition = Requestion.find(params[:id])
  end

  def create
  	@requestion = Requesition.new
  	if @requestion.save
  	 redirect_to requistions_path
    else
      render 'new'
    end
  end

  
end
