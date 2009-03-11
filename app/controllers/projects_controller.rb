class ProjectsController < PortalResourceController
  # GET /projects
  # GET /projects.xml
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    if params[:unit_id]
      @project = Unit.find(params[:unit_id]).project
    else
      @project = Project.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end


end
