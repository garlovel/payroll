desc "Load sample database records for payroll employees and schedules"
task :load_sample_data => :environment do
  require File.expand_path(File.dirname(__FILE__))+"/../../db/sample_data.rb"
end
