# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Review.destroy_all
User.destroy_all
Special.destroy_all

@client = GooglePlaces::Client.new(GOOGLE_API_KEY)
lisbon = @client.spots("38.722252", "-9.139337", :types => ['restaurant','food'], :limit => 5)
@client = GooglePlaces::Client.new("AIzaSyDs7-FQ4yLl2k9JnLk3FKcmeDgHqIWeUFE")
@client.spots(-33.8670522, 151.1957362, :types => ['restaurant','food'])
:radius => 100)

AIzaSyAJsgp24HqEfX1yXzf55eVsXPETP7me7OI




puts "Creating Restaurants"

10.times do |i|
  user = User.new({
    phone_number: Faker::PhoneNumber.cell_phone,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
    })
  user.email = "testicule#{i}@example.com"
  user.password = 'password'
  user.password_confirmation = 'password'
  user.save!
  user.facebook_picture_url = Faker::Avatar.image
  user.save!
  if i.even?
    restaurant = Restaurant.new({
      name: lisbon,
      address: Faker::Address.street_address,
      city: "Lisboa",
      postcode: Faker::Address.postcode,
      country: Faker::Country





      })

