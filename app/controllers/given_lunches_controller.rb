class GivenLunchesController < ApplicationController
  # GET /given_lunches
  # GET /given_lunches.xml
  def index
    @given_lunches = GivenLunch.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @given_lunches }
    end
  end

  # GET /given_lunches/1
  # GET /given_lunches/1.xml
  def show
    @given_lunch = GivenLunch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @given_lunch }
    end
  end

  # GET /given_lunches/new
  # GET /given_lunches/new.xml
  def new
    @given_lunch = GivenLunch.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @given_lunch }
    end
  end

  # GET /given_lunches/1/edit
  def edit
    @given_lunch = GivenLunch.find(params[:id])
  end

  # POST /given_lunches
  # POST /given_lunches.xml
  def create
    @given_lunch = GivenLunch.new(params[:given_lunch])

    respond_to do |format|
      if @given_lunch.save
        format.html { redirect_to(@given_lunch, :notice => 'Given lunch was successfully created.') }
        format.xml  { render :xml => @given_lunch, :status => :created, :location => @given_lunch }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @given_lunch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /given_lunches/1
  # PUT /given_lunches/1.xml
  def update
    @given_lunch = GivenLunch.find(params[:id])

    respond_to do |format|
      if @given_lunch.update_attributes(params[:given_lunch])
        format.html { redirect_to(@given_lunch, :notice => 'Given lunch was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @given_lunch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /given_lunches/1
  # DELETE /given_lunches/1.xml
  def destroy
    @given_lunch = GivenLunch.find(params[:id])
    @given_lunch.destroy

    respond_to do |format|
      format.html { redirect_to(given_lunches_url) }
      format.xml  { head :ok }
    end
  end
  
  
  
  
end
