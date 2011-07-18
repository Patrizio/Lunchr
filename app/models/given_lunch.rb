class GivenLunch < ActiveRecord::Base
  has_many :lunch_lists, :dependent => :destroy
  has_many :employees, :through => :lunch_lists
  
  validates :date_of_lunch, :presence => true
  validates :price, :presence => true
  validates_uniqueness_of :date_of_lunch 
  
  default_scope :order => 'date_of_lunch ASC'
  
  # get the days of the current week
  today = Time.new.strftime("%F")
  
  scope :today, where("date_of_lunch = ? ", today)
  
end
