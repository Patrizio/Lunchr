class Employee < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :employee_id
  attr_accessible :lastname_dutch
  
  has_many :lunch_lists
  has_many :given_lunches, :through => :lunch_lists

  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :employee_id, :presence => true
  validates_length_of :employee_id, :is => 5
  validates_uniqueness_of :employee_id
    
  default_scope :order => 'lastname ASC'
  
  def full_name
    "#{lastname}, #{firstname}"
  end
  
end
