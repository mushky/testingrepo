class ChangerequestsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
		if params[:search]
      @changerequests = ChangeRequest.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
    else
      @changerequests = ChangeRequest.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 7)
    end
  end
	
  def new
    @changerequest = ChangeRequest.new
  end

  def create
    @changerequest = ChangeRequest.new(changerequest_params)
    if @changerequest.save
      redirect_to changerequests_path
    else
      render 'new'
    end
  end

  def show
  	@changerequest = ChangeRequest.find(params[:id])
  end

  def edit
    @changerequest = ChangeRequest.find(params[:id])
  end

  def update
    @changerequest = ChangeRequest.find(params[:id])
    if @changerequest.update(changerequest_params)
      redirect_to @changerequest
    else
      render 'edit'
    end
  end

  def delete
    @changerequest = ChangeRequest.find(params[:id])
  end

  def destroy
    @changerequest = ChangeRequest.find(params[:id])
    @changerequest.destroy

    redirect_to changerequests_path
  end


  private
    def changerequest_params
      params.require(:changerequest).permit(:project_name,
																			      :unique_identifier,
																			      :item_title,
																			      :approved_by,
																			      :change_request_ref,
																			      :date_received,
																			      :requestor_name,
																			      :requestor_role,
																			      :related_issue_ref,
																			      :contact_details,
																			      :requestor_business_unit,
																			      :change_description,
																			      :change_justification,
																			      :alternative_comments,
																			      :supporting_information)
    end
end