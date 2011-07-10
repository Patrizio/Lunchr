class LunchListsController < ApplicationController
  # GET /lunch_lists
  # GET /lunch_lists.xml
  def index
    @lunch_lists = LunchList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lunch_lists }
    end
  end

  # GET /lunch_lists/1
  # GET /lunch_lists/1.xml
  def show
    @lunch_list = LunchList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lunch_list }
    end
  end

  # GET /lunch_lists/new
  # GET /lunch_lists/new.xml
  def new
    @lunch_list = LunchList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lunch_list }
    end
  end

  # GET /lunch_lists/1/edit
  def edit
    @lunch_list = LunchList.find(params[:id])
  end

  # POST /lunch_lists
  # POST /lunch_lists.xml
  def create
    @lunch_list = LunchList.new(params[:lunch_list])

    respond_to do |format|
      if @lunch_list.save
        format.html { redirect_to(@lunch_list, :notice => 'Lunch list was successfully created.') }
        format.xml  { render :xml => @lunch_list, :status => :created, :location => @lunch_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lunch_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lunch_lists/1
  # PUT /lunch_lists/1.xml
  def update
    @lunch_list = LunchList.find(params[:id])

    respond_to do |format|
      if @lunch_list.update_attributes(params[:lunch_list])
        format.html { redirect_to(@lunch_list, :notice => 'Lunch list was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lunch_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lunch_lists/1
  # DELETE /lunch_lists/1.xml
  def destroy
    @lunch_list = LunchList.find(params[:id])
    @lunch_list.destroy

    respond_to do |format|
      format.html { redirect_to(lunch_lists_url) }
      format.xml  { head :ok }
    end
  end
end
