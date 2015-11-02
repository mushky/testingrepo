class ParsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 

  def index
  	@pars = Par.all
  end

  def new
  	@par = Par.new
  end

  def show
  	@par = Par.find(params[:id])
  end

  def create
    @par = Par.new(par_params)
    if @par.save
      redirect_to pars_path
    else
      render 'new'
    end
  end

  def edit
    @par = Par.find(params[:id])
  end

  def update
    @par = Par.find(params[:id])
    if @par.update(par_params)
      redirect_to @par
    else
      render 'edit'
    end
  end

  def delete
    @par = Par.find(params[:id])
  end

  def destroy
    @par = Par.find(params[:id])
    @par.destroy

    redirect_to pars_path
  end

  private
    def par_params
      params.require(:par).permit(:cpar_number,
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
																	:evaluation_of_effectiveness_of_action_remarks)
    end  
end