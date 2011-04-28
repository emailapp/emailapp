class SmtpInfosController < ApplicationController
  # GET /smtp_infos
  # GET /smtp_infos.xml
  def index
    @smtp_infos = SmtpInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @smtp_infos }
    end
  end

  # GET /smtp_infos/1
  # GET /smtp_infos/1.xml
  def show
    @smtp_info = SmtpInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @smtp_info }
    end
  end

  # GET /smtp_infos/new
  # GET /smtp_infos/new.xml
  def new
    @smtp_info = SmtpInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @smtp_info }
    end
  end

  # GET /smtp_infos/1/edit
  def edit
    @smtp_info = SmtpInfo.find(params[:id])
  end

  # POST /smtp_infos
  # POST /smtp_infos.xml
  def create
    @smtp_info = SmtpInfo.new(params[:smtp_info])

    respond_to do |format|
      if @smtp_info.save
        format.html { redirect_to(@smtp_info, :notice => 'Smtp info was successfully created.') }
        format.xml  { render :xml => @smtp_info, :status => :created, :location => @smtp_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @smtp_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /smtp_infos/1
  # PUT /smtp_infos/1.xml
  def update
    @smtp_info = SmtpInfo.find(params[:id])

    respond_to do |format|
      if @smtp_info.update_attributes(params[:smtp_info])
        format.html { redirect_to(@smtp_info, :notice => 'Smtp info was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @smtp_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /smtp_infos/1
  # DELETE /smtp_infos/1.xml
  def destroy
    @smtp_info = SmtpInfo.find(params[:id])
    @smtp_info.destroy

    respond_to do |format|
      format.html { redirect_to(smtp_infos_url) }
      format.xml  { head :ok }
    end
  end
end
