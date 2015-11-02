class LicensesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
  	@licenses = License.all
  end
	
  def new
    @license = License.new
  end

  def create
    @license = License.new(receive_params)
    if @license.save
      redirect_to licenses_path
    else
      render 'new'
    end
  end

  def show
  	@license = License.find(params[:id])
  end

  def edit
    @license = License.find(params[:id])
  end

  def update
    @license = License.find(params[:id])
    if @license.update(receive_params)
      redirect_to @license
    else
      render 'edit'
    end
  end

  def delete
    @license = License.find(params[:id])
  end

  def destroy
    @license = License.find(params[:id])
    @license.destroy

    redirect_to licenses_path
  end


  private
    def receive_params
      params.require(:license).permit(:name, :description, :expiration, :user, :key)
    end
end

