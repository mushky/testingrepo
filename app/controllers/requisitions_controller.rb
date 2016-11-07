class RequisitionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
  	@requisitions = Requisition.all.order("created_at DESC")
  end

  def new
  	@requisition = Requisition.new
  end

  def show
  	@requisition = Requisition.find(params[:id])
  end

  def create
    @requisition = Requisition.new(requisition_params)
    if @requisition.save
      redirect_to requisitions_path
    else
      render 'new'
    end
  end


  def edit
    @requisition = Requisition.find(params[:id])
  end

  def update
    @requisition = Requisition.find(params[:id])
    if @requisition.update(requisition_params)
      redirect_to @requisition
    else
      render 'edit'
    end
  end

  def delete
    @requisition = Requisition.find(params[:id])
  end

  def destroy
    @requisition = Requisition.find(params[:id])
    @requisition.destroy

    redirect_to requisitions_path
  end

  private
    def requisition_params
      params.require(:requisition).permit(:id,
                                          :requestor, 
                                          :pr_number, 
                                          :pr_date, 
                                          :company, 
                                          :address, 
                                          :phone,
                                          :contact,
                                          :comments,
                                          :for_export,
                                          :to_where,
                                          :description_of_use,
                                          :quantity,
                                          :uom,
                                          :part_number,
                                          :description,
                                          :unit_cost,
                                          :total,
                                          :req_date,
                                          :acct_number,
                                          :usage,
                                          :approval,
                                          :approval_date,
                                          :program)
    end  
end
