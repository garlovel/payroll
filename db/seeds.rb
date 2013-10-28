# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

schedules = Schedule.create!([
                {:code => "IIN-W", :description => "Intern internal weekly", :period => "WEEKLY", :factor => 1, :rate => 12.5}, 
                {:code => "PIN-S", :description => "Programmer internal semi-monthly", :period => "SEMI-M", :factor => 1, :rate => 2000}, 
                {:code => "CIN-M", :description => "Consultant internal monthly", :period => "MONTHLY", :factor => 1.0765, :rate => 6000}])