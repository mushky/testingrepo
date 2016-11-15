class ReceiveitemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
    if params[:search]
      @receives = ReceiveItem.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
    else
      @receives = ReceiveItem.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 15)
    end
  end

  def new
    @receive = ReceiveItem.new
  end

  def create
    @receive = ReceiveItem.new(receive_params)
    if @receive.save
      redirect_to receiveitems_path
    else
      render 'new'
    end
  end

  def show
  	@receive = ReceiveItem.find(params[:id])
  end

  def edit
    @receive = ReceiveItem.find(params[:id])
  end

  def update
    @receive = ReceiveItem.find(params[:id])
    if @receive.update(receive_params)
      redirect_to @receive
    else
      render 'edit'
    end
  end

  def delete
    @receive = ReceiveItem.find(params[:id])
  end

  def destroy
    @receive = ReceiveItem.find(params[:id])
    @receive.destroy

    redirect_to receiveitems_path
  end


  private
    def receive_params
      params.require(:receiveitem).permit(:part, :serial, :date, :description, :quantity, :completed, :artifact)
    end
end


