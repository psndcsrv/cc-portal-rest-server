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

  # GET /class_words/new
  # GET /class_words/new.xml
  def new
    @class_word = ClassWord.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @class_word }
    end
  end

  # GET /class_words/1/edit
  def edit
    @class_word = ClassWord.find(params[:id])
  end

  # POST /class_words
  # POST /class_words.xml
  def create
    @class_word = ClassWord.new(params[:class_word])

    respond_to do |format|
      if @class_word.save
        flash[:notice] = 'ClassWord was successfully created.'
        format.html { redirect_to(@class_word) }
        format.xml  { render :xml => @class_word, :status => :created, :location => @class_word }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @class_word.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_words/1
  # PUT /class_words/1.xml
  def update
    @class_word = ClassWord.find(params[:id])

    respond_to do |format|
      if @class_word.update_attributes(params[:class_word])
        flash[:notice] = 'ClassWord was successfully updated.'
        format.html { redirect_to(@class_word) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @class_word.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_words/1
  # DELETE /class_words/1.xml
  def destroy
    @class_word = ClassWord.find(params[:id])
    @class_word.destroy

    respond_to do |format|
      format.html { redirect_to(class_words_url) }
      format.xml  { head :ok }
    end
  end
end
