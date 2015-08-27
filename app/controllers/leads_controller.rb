require 'testrd_gem'

class LeadsController < ApplicationController

  def new
  end

  def integrate
    id = Integer(params[:id])
    @lead = TestrdGem::Lead.show(id)
  end

  def index
    @leads = TestrdGem::Lead.all()
  end

  def destroy
    id = Integer(params[:id])
    TestrdGem::Lead.delete(id)
    redirect_to leads_path, notice: 'Lead was successfully deleted.'
  end

  def create
    new_lead = params[:lead]
    @lead = TestrdGem::Lead.new(new_lead[:name],new_lead[:last_name],new_lead[:email],new_lead[:company],new_lead[:job_title],new_lead[:phone],new_lead[:website])

    if @lead != nil
      redirect_to leads_path, notice: 'Lead was successfully created.'
    else
      render 'leads/new'
    end
  end

end
