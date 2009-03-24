class ClassDiyActivitiesController < ApplicationController
  # GET /class_diy_activities
  # GET /class_diy_activities.xml
  def index
    @class_diy_activities = ClassDiyActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @class_diy_activities }
    end
  end

  # GET /class_diy_activities/1
  # GET /class_diy_activities/1.xml
  def show
    @class_diy_activity = ClassDiyActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @class_diy_activity }
    end
  end

end
