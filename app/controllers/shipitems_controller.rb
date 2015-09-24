class ShipitemsController < ApplicationController
  
  def index
  	@ShipItems = ShipItem.all
  end
	
  def new
    @ShipItem = ShipItem.new
  end

  def create
    @ShipItem = ShipItem.new(shipitem_params)
    if @ShipItem.save
      redirect_to shipitems_path
    else
      render 'new'
    end
  end

  def show
  	@ShipItem = ShipItem.find(params[:id])
  end

  def edit
    @ShipItem = ShipItem.find(params[:id])
  end

  def update
    @ShipItem = ShipItem.find(params[:id])
    if @ShipItem.update(shipitem_params)
      redirect_to shipitems_path
    else
      render 'edit'
    end
  end

  def delete
    @ShipItem = ShipItem.find(params[:id])
  end

  def destroy
    @ShipItem = ShipItem.find(params[:id])
    @ShipItem.destroy

    redirect_to shipitems_path
  end


  private
    def shipitem_params
      params.require(:shipitem).permit(:part, :serial, :date, :description, :quantity, :completed)
    end
end
