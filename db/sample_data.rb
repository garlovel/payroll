# Create the Schedules and Employees from our sample spreadsheet data
iin_schedule = Schedule.create!({:code => "IIN-W", :description => "Intern internal weekly", :period => "WEEKLY", :factor => 1, :rate => 12.5, :occur => 52})
pin_schedule = Schedule.create!({:code => "PIN-S", :description => "Programmer internal semi-monthly", :period => "SEMI-M", :factor => 1, :rate => 2000, :occur => 24}) 
cin_schedule = Schedule.create!({:code => "CIN-M", :description => "Consultant internal monthly", :period => "MONTHLY", :factor => 1.0765, :rate => 6000, :occur => 12})
                
employees = Employee.create!([
                {:employee_identifier => "JUNIOR", :full_name => "Junior Programmer", :status => "Single", :exemptions => 0, :additional => 5, :schedule_id => iin_schedule.id},
                {:employee_identifier => "SENIOR", :full_name => "Senior Programmer", :status => "Married", :exemptions => 2, :additional => 0, :schedule_id => pin_schedule.id},
                {:employee_identifier => "BOSS", :full_name => "Head Consultant", :status => "Married", :exemptions => 4, :additional => 0, :schedule_id => cin_schedule.id}])
