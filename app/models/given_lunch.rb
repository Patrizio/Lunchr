class GivenLunch < ActiveRecord::Base
  has_many :lunch_lists
  has_many :employees, :through => :lunch_lists
  
  validates :date_of_lunch, :presence => true
  validates :price, :presence => true
  validates_uniqueness_of :date_of_lunch 
  
  def lunches_this_week
    # get the days of the current week
    today = Time.new
    start_week = today.at_beginning_of_week.strftime('%F')
    end_week = today.at_end_of_week.strftime('%F') 
  end
  
end
