class GivenLunch < ActiveRecord::Base
  has_many :lunch_lists
  has_many :employees, :through => :lunch_lists
  
  validates :date_of_lunch, :presence => true
  validates :price, :presence => true
  validates_uniqueness_of :date_of_lunch 
  
  default_scope :order => 'date_of_lunch ASC'
  
  # get the days of the current week
  today = Time.new
  start_week = today.at_beginning_of_week.strftime("%F")
  end_week = today.at_end_of_week.strftime("%F")
  
  scope :this_week, where("date_of_lunch >= ? and date_of_lunch <= ?", start_week, end_week)
  
end
