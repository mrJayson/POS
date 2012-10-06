# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Location.create ({name: "Warehouse", location_type: 'warehouse', max_capacity: 100000, location_id: nil})

Employee.create ({first_name: "Warehouse", last_name: "Admin",
   status: "warehouse", user_name: "admin",
   password: "1234", password_confirmation: "1234",
   location_id: Location.find_by_name("Warehouse")})

Employee.create ({first_name: "Jason", last_name: "Huang",
   status: "manager", user_name: "JasonHuang",
   password: "1234", password_confirmation: "1234",
   location_id: ""})