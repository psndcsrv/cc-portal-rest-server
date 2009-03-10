class ActivitiesController < ApplicationController
  # GET /activities
  # GET /activities.xml
  def index
    if params[:course_id]
      @activities = Course.find(params[:course_id]).activities
    else
      @activities = Activity.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @activities }
    end
  end

  # GET /activities/1
  # GET /activities/1.xml
  def show
    @activity = Activity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @activity }
    end
  end

end
