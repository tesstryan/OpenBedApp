# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = Shelter.new
a.name = "Connections for the Homeless"
a.email = "connections@example.com"
a.street_address = "1458 Chicago Ave, Evanston, IL 60201"
a.total_beds = "20"
a.open_beds = "20"
a.phone_number = "847-424-0945"
a.password = "password"
a.password_confirmation = "password"
a.save

a = Shelter.new
a.name = "Cornerstone Community Outreach"
a.email = "cornerstone@example.com"
a.street_address = "4628 N.Clifton, Chicago, IL 60640"
a.total_beds = "35"
a.open_beds = "35"
a.phone_number = "773-271-8163"
a.website = "http://www.ccolife.org/"
a.password = "password"
a.password_confirmation = "password"
a.save

a = Shelter.new
a.name = "Franciscan Outreach Association"
a.email = "franciscan@example.com"
a.street_address = "11645 W. LeMoyne Street, Chicago, IL 60622"
a.total_beds = "215"
a.phone_number = "773-278-6724"
a.total_beds = "25"
a.open_beds = "25"
a.website = "http://www.franoutreach.org/"
a.password = "password"
a.password_confirmation = "password"
a.save

a = Shelter.new
a.name = "Interfaith House "
a.email = "interfaith@example.com"
a.street_address = "3456 W. Franklin Blvd, Chicago, IL 60224"
a.phone_number = "773-533-6013"
a.total_beds = "60"
a.open_beds = "60"
a.password = "password"
a.password_confirmation = "password"
a.save

a = Shelter.new
a.name = "Maria’s Shelter"
a.email = "marias@example.com"
a.street_address = "7320 South Yale, Chicago, IL 60616"
a.phone_number = "773-994-5350"
a.total_beds = "50"
a.open_beds = "50"
a.website = "http://www.communitywalk.com/location/marias_shelter/info/1337194"
a.password = "password"
a.password_confirmation = "password"
a.save
