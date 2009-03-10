class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.xml
  def index
    if params[:student_id]
      @courses = Student.find(params[:student_id]).courses
    elsif params[:teacher_id]
      @courses = Teacher.find(params[:teacher_id]).courses
    elsif params[:unit_id]
      @courses = Unit.find(params[:unit_id]).courses
    elsif params[:subject_id]
      @courses = Subject.find(params[:subject_id]).courses
    elsif params[:level_id]
      @courses = Level.find(params[:level_id]).courses
    elsif params[:activity_id]
      @courses = Activity.find(params[:activity_id]).courses
    else
      @courses = Course.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.xml
  def show
    if params[:class_word_id]
      @course = ClassWord.find(params[:class_word_id]).course
    else
      @course = Course.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course }
    end
  end


end
