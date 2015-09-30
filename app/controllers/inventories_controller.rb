class InventoriesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
  	@inventories = Inventory.all
  end
	
  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      redirect_to inventories_path
    else
      render 'new'
    end
  end

  def show
  	@inventory = Inventory.find(params[:id])
  end

  def edit
    @inventory = Inventory.find(params[:id])
  end

  def update
    @inventory = Inventory.find(params[:id])
    if @inventory.update(inventory_params)
      redirect_to inventories_path
    else
      render 'edit'
    end
  end

  def delete
    @inventory = Inventory.find(params[:id])
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy

    redirect_to inventories_path
  end


  private
    def inventory_params
      params.require(:inventory).permit(:part, :serial, :date, :description, :quantity, :completed)
    end
end