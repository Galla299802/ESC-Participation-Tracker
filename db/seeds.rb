# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.delete_all()
User.delete_all()

events_list = [
[1, "Test Past Event", '20201028 01:20:00 AM', "Past Location", "Testing a past event"],
[2, "Test Future Event", '20210101 00:00:00 AM', "Future Location", "Testing a future event"]
]
superadmin_list = [
  ["austinkollar@tamu.edu", "Austin", "Kollar"],
  ["romster@tamu.edu", "Romeo", "Rivera"],
  ["esctamu.president@gmail.com", "ESC", "President"],
  ["esctamu.vpdevelop@gmail.com", "ESC", "Vice President"]
]

events_list.each do |id, name, date, location, description|
  Event.create(id: id, EventName: name, Date: date, Location: location, Description: description)
end
superadmin_list.each do |email, first_name, last_name|
  User.create!(email: email, first_name: first_name, last_name: last_name, password: "3$(@pP", superadmin_role: true)
end
