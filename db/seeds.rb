# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "Creating users"
User.create(name: 'Admin1', admin: true)
User.create(name: 'User1', admin: false)

p "Creating motorcycles"
Motorcycle.create(articleID: 973642, brand: 'Jeep', model: 'GTBO 600 Daytona-VI', year: '2021', image: 'http://api-motorcycle.makingdatameaningful.com/files/Acabion/2011/GTBO%20600%20Daytona-VI/Acabion_2011_GTBO%20600%20Daytona-VI.jpeg', rental_price: 500)

p "Creating reservations"
Reservation.create(motorcycle_id: 1, user_id: 1, total_price: 100)

p "------------------"

p "Created #{User.count} users"
p "Created #{Motorcycle.count} motorcycles"
p "Created #{Reservation.count} reservations"

