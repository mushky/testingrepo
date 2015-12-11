class ShipitemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
  	@shipitems = ShipItem.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
  end
	
  def new
    @shipitem = ShipItem.new
  end

  def create
    @shipitem = ShipItem.new(shipitem_params)
    if @shipitem.save
      redirect_to shipitems_path
    else
      render 'new'
    end
  end

  def show
  	@shipitem = ShipItem.find(params[:id])
  end

  def edit
    @shipitem = ShipItem.find(params[:id])
  end

  def update
    @shipitem = ShipItem.find(params[:id])
    if @shipitem.update(shipitem_params)
      redirect_to @shipitem
    else
      render 'edit'
    end
  end

  def delete
    @shipitem = ShipItem.find(params[:id])
  end

  def destroy
    @shipitem = ShipItem.find(params[:id])
    @shipitem.destroy

    redirect_to shipitems_path
  end


  private
    def shipitem_params
      params.require(:shipitem).permit(:id, :part, :serial, :date, :description, :quantity, :completed)
    end
end
