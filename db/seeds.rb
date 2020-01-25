# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

###### USER ######
user = User.create!(
  email: 'thomas@testing.com',
  password: 'password'
)

puts 'user successfully create!d'

###### BIKES ######
bike_1 = Bike.create!(
  status: 'booked',
  name: 'Grandville',
  user: user,
  address: 'Avenue des grands prix, 2, Bruxelles 1200',
  price: 100
)

bike_2 = Bike.create!(
  status: 'available',
  name: 'Treck',
  user: user,
  address: 'Avenue des grands prix, 9, Bruxelles 1000',
  price: 89
)

bike_3 = Bike.create!(
  status: 'available',
  name: 'Lapierre',
  user: user,
  address: 'Avenue de la bonne reine, 19, Bruxelles 1200',
  price: 20
)

bike_4 = Bike.create!(
  status: 'available',
  name: 'SisiLaFamille',
  user: user,
  address: '79 Av. des Champs-Élysées, 75008 Paris, France',
  price: 20
)

puts '4 bikes successfully create!d'

###### MISSIONS ######
booking_1 = Booking.create!(
  start_date: '18/01/2020',
  end_date: '28/01/2020',
  price_per_day: 20,
  user: user,
  bike: bike_1
)

booking_2 = Booking.create!(
  start_date: '20/01/2020',
  end_date: '22/01/2020',
  price_per_day: 20,
  user: user,
  bike: bike_2
)

puts '2 missions successfully create!d'
