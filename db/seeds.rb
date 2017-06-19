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

restadr = {[]}





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
      name: Faker::GameOfThrones,
      address: Faker::Address.street_address,
      city: "Lisboa",
      postcode: Faker::Address.postcode,
      country: Faker::Country





      })

