class Schedule < ActiveRecord::Base
  has_many :schedules
  
  validates_uniqueness_of :code
end
