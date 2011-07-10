class GivenLunch < ActiveRecord::Base
  has_many :lunch_lists
  has_many :employees, :through => :lunch_lists
  
  validates :date_of_lunch, :presence => true
  validates :price, :presence => true
end
