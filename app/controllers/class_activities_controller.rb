class ClassActivitiesController < PortalResourceController
  # GET /class_activities
  # GET /class_activities.xml
  def index
    @class_activities = ClassActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @class_activities }
    end
  end

  # GET /class_activities/1
  # GET /class_activities/1.xml
  def show
    @class_activity = ClassActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @class_activity }
    end
  end


end
