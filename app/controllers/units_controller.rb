class UnitsController < ApplicationController
  # GET /units
  # GET /units.xml
  def index
    @units = Unit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @units }
    end
  end

  # GET /units/1
  # GET /units/1.xml
  def show
    if params[:activity_id]
      @unit = Activity.find(params[:activity_id]).unit
    else
      @unit = Unit.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unit }
    end
  end


end
