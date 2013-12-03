# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = Shelter.new
a.name = "Lakeview Community Shelter"
a.email = "lakeview@example.com"
a.password = "password"
a.password_confirmation = "password"
a.save

a = Shelter.new
a.name = "North Shore Community Shelter"
a.email = "northshore@example.com"
a.password = "password"
a.password_confirmation = "password"
a.save

a = Shelter.new
a.name = "West Loop Shelter"
a.email = "westloop@example.com"
a.password = "password"
a.password_confirmation = "password"
a.save

a = Shelter.new
a.name = "Andersonville North Shelter"
a.email = "andersonville@example.com"
a.password = "password"
a.password_confirmation = "password"
a.save
