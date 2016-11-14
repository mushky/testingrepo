class ReceiveitemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
    if params[:search]
      @ReceiveItems = ReceiveItem.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
    else
      @ReceiveItems = ReceiveItem.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 15)
    end
  end

  def new
    @ReceiveItem = ReceiveItem.new
  end

  def create
    @ReceiveItem = ReceiveItem.new(receive_params)
    if @ReceiveItem.save
      redirect_to receiveitems_path
    else
      render 'new'
    end
  end

  def show
  	@ReceiveItem = ReceiveItem.find(params[:id])
  end

  def edit
    @ReceiveItem = ReceiveItem.find(params[:id])
  end

  def update
    @ReceiveItem = ReceiveItem.find(params[:id])
    if @ReceiveItem.update(receive_params)
      redirect_to @ReceiveItem
    else
      render 'edit'
    end
  end

  def delete
    @ReceiveItem = ReceiveItem.find(params[:id])
  end

  def destroy
    @ReceiveItem = ReceiveItem.find(params[:id])
    @ReceiveItem.destroy

    redirect_to receiveitems_path
  end


  private
    def receive_params
      params.require(:receiveitem).permit(:part, :serial, :date, :description, :quantity, :completed, :artifact)
    end
end


