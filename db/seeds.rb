# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'factory_girl_rails'
# require './../spec/factories/admins'
# require '../spec/factories/bikes'
# require '../spec/factories/people'

# create(:admin)

# 10.times do
#   create(:bike)
#   create(:person)
# end

# require 'factory_girl_rails'
# Dir[Rails.root.join("spec/factories/*.rb")].each {|f| require f}

# 10.times do
#   Factory.create :bike
# end

require 'faker'

Admin.create(
  email: 'test@test.com', 
  password: 'password'
)

10.times do 
  Bike.create(
    photo: Faker::Avatar.image,
    name: Faker::Name.name,
    description: Faker::Lorem.sentence,
    size: ['small', 'medium', 'large'].sample
  )
  Person.create(
    name: Faker::Name.name,
    phone: Faker::Number.number(9),
    email: Faker::Internet.email
  )
end