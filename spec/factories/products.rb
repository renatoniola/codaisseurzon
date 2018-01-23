FactoryBot.define do
  factory :product do
    name           { Faker::Lorem.words(3).join(' ') }
    description    { Faker::Lorem.sentence(40) }
    price          { Faker::Commerce.price }
  end
end
