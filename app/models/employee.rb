class Employee < ActiveRecord::Base
  has_many :paychecks
  
  validates_uniqueness_of :employee_type
end
