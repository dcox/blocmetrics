# Users
User.create!(email: "dcox@zendesk.com", password: "hello there", password_confirmation: "hello there", confirmed_at: Time.now)

5.times do 
   User.create!(email: Faker::Internet.email, password: Faker::Internet::password(8))
end
users = User.count

# Registered Applications
20.times do 
   RegisteredApplication.create!(name: Faker::Internet.domain_name, user_id: User.all.sample.id, url: Faker::Internet.url)
end
registered_applications = RegisteredApplication.count

# Events
event_names = ["Click Link", "Submit Form"]
50.times do 
  Event.create!(name: event_names.sample, registered_application: RegisteredApplication.all.sample)
end

events = Event.count

puts "#{users} Users created"
puts "#{registered_applications} Registered #{"Application".pluralize(registered_applications)} created"
puts "#{events} Registered #{"Event".pluralize(events)} created"
