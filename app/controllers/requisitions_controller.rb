class RequisitionsController < ApplicationController
  def index
  	@requisitions = Requisition.all
  end

  def new
  	@requesition = Requisition.new
  end

  def show
  	@requesition = Requisition.find(params[:id])
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
      redirect_to requisitions_path
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
      params.require(:requisition).permit(:requestor, 
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
                                          :approval_date)
    end  
end
