FactoryGirl.define do
  factory :bike do 
    photo Faker::Avatar.image
    name Faker::Name.name
    description Faker::Lorem.sentence
    size ['small', 'medium', 'large'].sample
  end
end