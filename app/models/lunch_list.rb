class LunchList < ActiveRecord::Base
  belongs_to :employee
  belongs_to :given_lunch
  
  validates :employee_id, :presence => true
  validates :given_lunch, :presence => true
  
  validates_uniqueness_of :given_lunch_id, :scope => :employee_id, :message => "- has already been associated with this employee" 
  
  
  
end
