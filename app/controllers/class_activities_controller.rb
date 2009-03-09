class ClassActivitiesController < ApplicationController
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

  # GET /class_activities/new
  # GET /class_activities/new.xml
  def new
    @class_activity = ClassActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @class_activity }
    end
  end

  # GET /class_activities/1/edit
  def edit
    @class_activity = ClassActivity.find(params[:id])
  end

  # POST /class_activities
  # POST /class_activities.xml
  def create
    @class_activity = ClassActivity.new(params[:class_activity])

    respond_to do |format|
      if @class_activity.save
        flash[:notice] = 'ClassActivity was successfully created.'
        format.html { redirect_to(@class_activity) }
        format.xml  { render :xml => @class_activity, :status => :created, :location => @class_activity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @class_activity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_activities/1
  # PUT /class_activities/1.xml
  def update
    @class_activity = ClassActivity.find(params[:id])

    respond_to do |format|
      if @class_activity.update_attributes(params[:class_activity])
        flash[:notice] = 'ClassActivity was successfully updated.'
        format.html { redirect_to(@class_activity) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @class_activity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_activities/1
  # DELETE /class_activities/1.xml
  def destroy
    @class_activity = ClassActivity.find(params[:id])
    @class_activity.destroy

    respond_to do |format|
      format.html { redirect_to(class_activities_url) }
      format.xml  { head :ok }
    end
  end
end
