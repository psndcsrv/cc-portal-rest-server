class LevelsController < ApplicationController
  # GET /levels
  # GET /levels.xml
  def index
    @levels = Level.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @levels }
    end
  end

  # GET /levels/1
  # GET /levels/1.xml
  def show
    @level = Level.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @level }
    end
  end

 
end
