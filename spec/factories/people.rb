FactoryGirl.define do
  factory :person do
    name Faker::Name.name
    phone Faker::Number.number(9)
    email Faker::Internet.email
  end
end