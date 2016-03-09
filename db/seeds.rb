# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Generate Registered Applications
5.times do 
   RegisteredApplication.create!(name: "MyCoolApp", url: "http://mycoolapp.com")
end
registered_applications = RegisteredApplication.count

50.times do 
  Event.create!(name: "MySweetEvent", registered_application: RegisteredApplication.all.sample)
end

events = Event.count

puts "#{registered_applications} Registered #{"Application".pluralize(registered_applications)} created"
puts "#{events} Registered #{"Event".pluralize(events)} created"

