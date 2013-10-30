class Employee < ActiveRecord::Base
  has_many :paychecks
  belongs_to :schedule
  
  validates_uniqueness_of :employee_identifier
end
