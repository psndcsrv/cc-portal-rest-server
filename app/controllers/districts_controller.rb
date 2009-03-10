class DistrictsController < ApplicationController
  # GET /districts
  # GET /districts.xml
  def index
    @districts = District.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @districts }
    end
  end

  # GET /districts/1
  # GET /districts/1.xml
  def show
    if params[:school_id]
      @district = School.find(params[:school_id]).district
    else
      @district = District.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @district }
    end
  end


end
