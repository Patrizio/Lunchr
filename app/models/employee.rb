class Employee < ActiveRecord::Base
  has_many :lunch_lists
  has_many :given_lunches, :through => :lunch_lists

  
end
