class ClassStudentsController < PortalResourceController
  # GET /class_students
  # GET /class_students.xml
  def index
    @class_students = ClassStudent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @class_students }
    end
  end

  # GET /class_students/1
  # GET /class_students/1.xml
  def show
    @class_student = ClassStudent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @class_student }
    end
  end


end
