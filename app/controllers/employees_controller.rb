class EmployeesController < ApplicationController
  # GET /employees
  # GET /employees.xml
  def index
    @employees = Employee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employees }
    end
  end

  # GET /employees/1
  # GET /employees/1.xml
  def show
    @employee = Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employee }
    end
  end

  # GET /employees/new
  # GET /employees/new.xml
  def new
    @employee = Employee.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employee }
    end
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])
  end

  # POST /employees
  # POST /employees.xml
  def create
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to(@employee, :notice => 'Employee was successfully created.') }
        format.xml  { render :xml => @employee, :status => :created, :location => @employee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employees/1
  # PUT /employees/1.xml
  def update
    @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html { redirect_to(@employee, :notice => 'Employee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.xml
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to(employees_url) }
      format.xml  { head :ok }
    end
  end
  
  def overview
    @employees = Employee.all
    @employees_by_lastname = @employees.group_by { |t| t.lastname[0] }

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employees }
    end
  end
  
  def register_lunch
    @employee = Employee.find(params[:id])   
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employee }
    end
  end
  
  def create_lunch
   params[:lunch_ids].each do |new_lunch| 
       lunch = LunchList.new 
       lunch.employee_id = params[:id]
       lunch.given_lunch_id = new_lunch
       lunch.save 
    end
  
    flash[:notice] = 'Lunches were successfully updated.'
    redirect_to :action => "overview"  
  end  
  
  def overview_per_month
    @employee = Employee.find(params[:id])
    @lunches_per_month = Employee.find(params[:id]).given_lunches.group_by { |lunch| lunch.date_of_lunch.strftime("%B") }

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lunches_per_month }
    end
  end
  
end
