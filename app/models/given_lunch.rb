class GivenLunch < ActiveRecord::Base
  has_many :lunch_lists
  has_many :employees, :through => :lunch_lists
end
