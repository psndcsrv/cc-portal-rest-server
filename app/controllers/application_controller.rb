# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  # GET /activities/new
  # GET /activities/new.xml
  def new
    respond_to do |format|
      format.html { head :forbidden }
      format.xml  { head :forbidden }
    end
  end

  # GET /activities/1/edit
  def edit
    respond_to do |format|
      format.html { head :forbidden }
      format.xml  { head :forbidden }
    end
  end

  # POST /activities
  # POST /activities.xml
  def create
    respond_to do |format|
      format.html { head :forbidden }
      format.xml  { head :forbidden }
    end
  end

  # PUT /activities/1
  # PUT /activities/1.xml
  def update
    respond_to do |format|
      format.html { head :forbidden }
      format.xml  { head :forbidden }
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.xml
  def destroy
    respond_to do |format|
      format.html { head :forbidden }
      format.xml  { head :forbidden }
    end
  end
end
