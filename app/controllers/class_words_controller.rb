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
    @class_word = ClassWord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @class_word }
    end
  end


end
