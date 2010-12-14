class Salesforce::LeadsController < ApplicationController
  # GET /salesforce_leads
  # GET /salesforce_leads.xml
  def index
    @salesforce_leads = Salesforce::Lead.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @salesforce_leads }
    end
  end

  # GET /salesforce_leads/1
  # GET /salesforce_leads/1.xml
  def show
    @lead = Salesforce::Lead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lead }
    end
  end

  # GET /salesforce_leads/new
  # GET /salesforce_leads/new.xml
  def new
    @lead = Salesforce::Lead.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lead }
    end
  end

  # GET /salesforce_leads/1/edit
  def edit
    @lead = Salesforce::Lead.find(params[:id])
  end

  # POST /salesforce_leads
  # POST /salesforce_leads.xml
  def create
    @lead = Salesforce::Lead.new(params[:salesforce_lead])

    respond_to do |format|
      if @lead.save
        format.html { redirect_to(@lead, :notice => 'Salesforce::Lead was successfully created.') }
        format.xml  { render :xml => @lead, :status => :created, :location => @lead }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lead.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salesforce_leads/1
  # PUT /salesforce_leads/1.xml
  def update
    @lead = Salesforce::Lead.find(params[:id])
    # if params["salesforce_lead"] && params["salesforce_lead"].class == Hash
      params["salesforce_lead"].each do |key, value|
        method = key + "="
        @lead.send method, value
      end
    # end
    # @lead = Salesforce::Lead.new(params[:salesforce_lead])
    
    respond_to do |format|
      # if @lead.update_attributes(params[:lead])
      if @lead.save
        format.html { redirect_to(@lead, :notice => 'Salesforce::Lead was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lead.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salesforce_leads/1
  # DELETE /salesforce_leads/1.xml
  def destroy
    @lead = Salesforce::Lead.find(params[:id])
    @lead.destroy

    respond_to do |format|
      format.html { redirect_to(salesforce_leads_url) }
      format.xml  { head :ok }
    end
  end
end
