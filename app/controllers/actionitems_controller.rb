class ActionitemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
    @actionitems = Actionitem.all
  end

  def corporatereport
    @actionitems = Actionitem.all
  end
  helper_method :program_id

  def new
    @actionitem = Actionitem.new
  end

  def show
    @actionitem = Actionitem.find(params[:id])
    #send_data(@actionitem.file_contents, type: @actionitem.content_type, filename: @document.filename)
  end

  def create
    @actionitem = Actionitem.new(actionitem_params)  
      if @actionitem.save
        redirect_to actionitems_path
      else
        render 'new'
      end
  end

  def edit
    @actionitem = Actionitem.find(params[:id])
  end

  def update
    @actionitem = Actionitem.find(params[:id])
    if @actionitem.update(actionitem_params)
      redirect_to @actionitem
    else
      render 'edit'
    end
  end

  def delete
    @actionitem = Actionitem.find(params[:id])
  end

  def destroy
    @actionitem = Actionitem.find(params[:id])
    @actionitem.destroy

    redirect_to actionitems_path
  end

  private
  def actionitem_params
    params.require(:actionitem).permit( :subject, :event_discussed, :assigned_to, 
                                        :project, :status, :priority, :area, 
                                        :comment, :request_due_date, :hours_to_completion, 
                                        :completion_date, :percent_complete, 
                                        :filename, :content_type, :file_contents, :notification )
    end
end

