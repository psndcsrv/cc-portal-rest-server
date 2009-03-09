class ClassStudentsController < ApplicationController
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

  # GET /class_students/new
  # GET /class_students/new.xml
  def new
    @class_student = ClassStudent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @class_student }
    end
  end

  # GET /class_students/1/edit
  def edit
    @class_student = ClassStudent.find(params[:id])
  end

  # POST /class_students
  # POST /class_students.xml
  def create
    @class_student = ClassStudent.new(params[:class_student])

    respond_to do |format|
      if @class_student.save
        flash[:notice] = 'ClassStudent was successfully created.'
        format.html { redirect_to(@class_student) }
        format.xml  { render :xml => @class_student, :status => :created, :location => @class_student }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @class_student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_students/1
  # PUT /class_students/1.xml
  def update
    @class_student = ClassStudent.find(params[:id])

    respond_to do |format|
      if @class_student.update_attributes(params[:class_student])
        flash[:notice] = 'ClassStudent was successfully updated.'
        format.html { redirect_to(@class_student) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @class_student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_students/1
  # DELETE /class_students/1.xml
  def destroy
    @class_student = ClassStudent.find(params[:id])
    @class_student.destroy

    respond_to do |format|
      format.html { redirect_to(class_students_url) }
      format.xml  { head :ok }
    end
  end
end
