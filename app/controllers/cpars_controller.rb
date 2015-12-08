class CparsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
		if params[:search]
      @cpars = Cpar.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
    else
      @cpars = Cpar.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 7)
    end
  end
  
  def new
  	@cpar = Cpar.new
  end

  def show
  	@cpar = Cpar.find(params[:id])
  end

  def create
    @cpar = Cpar.new(cpar_params)  
	    if @cpar.save
	      redirect_to cpars_path
	    else
	      render 'new'
	    end
	  
  end

  def edit
    @cpar = Cpar.find(params[:id])
  end

  def update
    @cpar = Cpar.find(params[:id])
    if @cpar.update(cpar_params)
      redirect_to @cpar
    else
      render 'edit'
    end
  end

  def delete
    @cpar = Cpar.find(params[:id])
  end

  def destroy
    @cpar = Cpar.find(params[:id])
    @cpar.destroy

    redirect_to cpars_path
  end

  def form_counter
  	@cpar = Cpar.new
  	if @cpar.form == "Preventive Action"
		  @cpar.par_counter+=1
		end
		if @cpar.form == "Corrective Action"
		  @cpar.car_counter+=1 
		end  
		if @cpar.form == "Non-Conforming Material"
		 	@cpar.ncmr_counter+=1 
		end  
		if @cpar.form == "Supplier Corrective Action"
		 	@cpar.scar_counter+=1
		end  
		if @cpar.form == "Continual Improvement"
		 	@cpar.ci_counter+=1
		end
	end

  private
    def cpar_params
      params.require(:cpar).permit(:cpar_number,
																	:form,
																	:iat_number,
																	:program,
																	:cpar_source,
																	:category_phase,
																	:specific_source,
																	:other_category,
																	:raised_by,
																	:assigned_to,
																	:date,
																	:raised_by_remarks,
																	:solution_required_by_date,
																	:solution_required_remarks,
																	:form_completed_by,
																	:form_completed_by_date,
																	:form_completed_by_remarks,

																	:affects_delivered_product,
																	:affects_delivered_product_describe,
																	:manufacturer,
																	:supplier,
																	:part_number,
																	:nomenclature,
																	:quantity,
																	:serial_numbers,
																	:disposition,
																	:supplier_action,
																	:follow_up_action, 
																	:other_action,
																	:disposition_by,
																	:disposition_date,
																	:disposition_remarks,
																	:sub_contract_po_number,
																	:rma_no,
																	:supplier_name,
																	:address,
																	:point_of_contact, 
																	:telephone,
																	:mobile,
																	:email,

																	:finding,
																	:finding_impact,
																	:proposed_immediate_action,
																	:proposed_immediate_action_completed_by,
																	:proposed_immediate_action_date,
																	:proposed_immediate_action_remarks,
																	:root_cause_analysis_required,
																	:underlying_root_cause,
																	:determined_by,
																	:underlying_root_cause_date,
																	:underlying_root_cause_remarks,
																	:proposed_action_for_longterm_solution,
																	:proposed_action_for_longterm_solution_completed_by,
																	:proposed_action_for_longterm_solution_date,
																	:proposed_action_for_longterm_solution_remarks,
																	:evaluation_of_effectiveness_of_action,
																	:objective_evidence,
																	:closed_out_by,
																	:evaluation_of_effectiveness_of_action_date,
																	:evaluation_of_effectiveness_of_action_remarks,
																	:program_enum,
																	:car_counter,
																	:par_counter,
																	:ci_counter,
																	:ncmr_counter,
																	:scar_counter,
																	:title,
																	:old_id)
    end
end
