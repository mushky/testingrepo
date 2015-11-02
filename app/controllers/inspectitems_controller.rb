class InspectitemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
  	@InspectItems = InspectItem.all
  end
	
  def new
    @InspectItem = InspectItem.new
  end

  def create
    @InspectItem = InspectItem.new(receive_params)
    if @InspectItem.save
      redirect_to inspectitems_path
    else
      render 'new'
    end
  end

  def show
  	@InspectItem = InspectItem.find(params[:id])
  end

  def edit
    @InspectItem = InspectItem.find(params[:id])
  end

  def update
    @InspectItem = InspectItem.find(params[:id])
    if @InspectItem.update(receive_params)
      redirect_to @InspectItem
    else
      render 'edit'
    end
  end

  def delete
    @InspectItem = InspectItem.find(params[:id])
  end

  def destroy
    @InspectItem = InspectItem.find(params[:id])
    @InspectItem.destroy

    redirect_to inspectitems_path
  end


  private
    def receive_params
      params.require(:inspectitem).permit(:part, :serial, :date, :description, :quantity, :completed)
    end
end