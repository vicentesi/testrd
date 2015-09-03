require 'testrd_gem'

class LeadsController < ApplicationController

  def new
  end

  def integrate
    id    = Integer(params[:id])
    @lead = TestrdGem::Lead.show(id)
  end

  def integrate_submit
    lead_integrate = params[:lead_integrate]

    @lead = TestrdGem::Lead.show(Integer(params[:id]))

    mapped_params = {}
    mapped_params[:LastName]  = @lead["last_name"]
    mapped_params[:Company]   = @lead["company"]

    if lead_integrate[:name_mapping]      == "true" then mapped_params[:FirstName] = @lead["name"]       end
    if lead_integrate[:email_mapping]     == "true" then mapped_params[:Email]     = @lead["email"]      end
    if lead_integrate[:job_title_mapping] == "true" then mapped_params[:Title]     = @lead["job_title"]  end
    if lead_integrate[:phone_mapping]     == "true" then mapped_params[:Phone]     = @lead["phone"]      end
    if lead_integrate[:website_mapping]   == "true" then mapped_params[:Website]   = @lead["website"]    end

    begin
      @integration_result = TestrdGem::Lead.integrate(lead_integrate[:username],lead_integrate[:password],lead_integrate[:token], mapped_params)
    rescue Exception => ex
      redirect_to '/leads/integrate/' + params[:id], notice: ex.to_s
    end
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
    new_lead  = params[:lead]
    @lead     = TestrdGem::Lead.new(new_lead[:name],new_lead[:last_name],new_lead[:email],new_lead[:company],new_lead[:job_title],new_lead[:phone],new_lead[:website])

    if @lead != nil
      redirect_to leads_path, notice: 'Lead was successfully created.'
    else
      render 'leads/new'
    end
  end

end
