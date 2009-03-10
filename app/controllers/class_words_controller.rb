class ClassWordsController < ApplicationController
  # GET /class_words
  # GET /class_words.xml
  def index
    @class_words = ClassWord.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @class_words }
    end
  end

  # GET /class_words/1
  # GET /class_words/1.xml
  def show
    if params[:course_id]
      @class_word = Course.find(params[:course_id]).class_word
    else
      @class_word = ClassWord.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @class_word }
    end
  end


end
