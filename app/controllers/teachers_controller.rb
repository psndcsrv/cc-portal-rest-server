class TeachersController < PortalResourceController
  # GET /teachers
  # GET /teachers.xml
  def index
    if params[:student_id]
      @teachers = Student.find(params[:student_id]).teachers
    elsif params[:school_id]
      @teachers = School.find(params[:school_id]).teachers
    else
      @teachers = Teacher.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @teachers }
    end
  end

  # GET /teachers/1
  # GET /teachers/1.xml
  def show
    if params[:course_id]
      @teacher = Course.find(params[:course_id]).teacher
    else
      @teacher = Teacher.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @teacher }
    end
  end


end
