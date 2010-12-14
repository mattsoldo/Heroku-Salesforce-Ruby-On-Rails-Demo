class Salesforce::ContactsController < ApplicationController
  # GET /salesforce_contacts
  # GET /salesforce_contacts.xml
  def index
    @salesforce_contacts = Salesforce::Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @salesforce_contacts }
    end
  end

  # GET /salesforce_contacts/1
  # GET /salesforce_contacts/1.xml
  def show
    @contact = Salesforce::Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact }
    end
  end

  # GET /salesforce_contacts/new
  # GET /salesforce_contacts/new.xml
  def new
    @contact = Salesforce::Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact }
    end
  end

  # GET /salesforce_contacts/1/edit
  def edit
    @contact = Salesforce::Contact.find(params[:id])
  end

  # POST /salesforce_contacts
  # POST /salesforce_contacts.xml
  def create
    @contact = Salesforce::Contact.new(params[:salesforce_contact])

    respond_to do |format|
      if @contact.save
        format.html { redirect_to(@contact, :notice => 'Salesforce::Contact was successfully created.') }
        format.xml  { render :xml => @contact, :status => :created, :location => @contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salesforce_contacts/1
  # PUT /salesforce_contacts/1.xml
  def update
    @contact = Salesforce::Contact.new(params[:salesforce_contact])

    respond_to do |format|
      if @contact.save #@contact.update_attributes(params[:contact])
        format.html { redirect_to(@contact, :notice => 'Salesforce::Contact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salesforce_contacts/1
  # DELETE /salesforce_contacts/1.xml
  def destroy
    @contact = Salesforce::Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to(salesforce_contacts_url) }
      format.xml  { head :ok }
    end
  end
end
