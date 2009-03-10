class SchoolsController < PortalResourceController
  # GET /schools
  # GET /schools.xml
  def index
    @schools = School.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @schools }
    end
  end

  # GET /schools/1
  # GET /schools/1.xml
  def show
    if params[:teacher_id]
      @school = Teacher.find(params[:teacher_id]).school
    else
      @school = School.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @school }
    end
  end


end
