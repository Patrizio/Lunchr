class LunchList < ActiveRecord::Base
  belongs_to :employee
  belongs_to :given_lunch
end
