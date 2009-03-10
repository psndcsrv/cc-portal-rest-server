class StudentsController < PortalResourceController
  # GET /students
  # GET /students.xml
  def index
    if params[:course_id]
      @students = Course.find(params[:course_id]).students
    elsif params[:teacher_id]
      @students = Teacher.find(params[:teacher_id]).students
    else
      @students = Student.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @students }
    end
  end

  # GET /students/1
  # GET /students/1.xml
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student }
    end
  end

 
end
