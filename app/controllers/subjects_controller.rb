class SubjectsController < PortalResourceController
  # GET /subjects
  # GET /subjects.xml
  def index
    @subjects = Subject.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subjects }
    end
  end

  # GET /subjects/1
  # GET /subjects/1.xml
  def show
    if params[:activity_id]
      @subject = Activity.find(params[:activity_id]).subject
    else
      @subject = Subject.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subject }
    end
  end

 
end
