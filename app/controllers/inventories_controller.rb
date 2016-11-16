class InventoriesController < ApplicationController
  before_action :authenticate_user!#, except: [:index, :show] 

  def index
    if params[:search]
      @inventories = Inventory.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 15)      
    else
      @inventories = Inventory.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 15)
    end
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
      redirect_to @inventory
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
      params.require(:inventory).permit(:employee, :laptop_model, :laptop_serial_number, :windows, :office_suite, :adobe_pro, :adobe_stn,
                                        :visual_studio, :visio, :status, :other, :iat_num, :microsoft_project, :nxpowerlite,
                                        :win_pro, :in_use)
    end
end
