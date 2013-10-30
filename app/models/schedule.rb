class Schedule < ActiveRecord::Base
  has_many :employees
  
  validates_uniqueness_of :code
end
