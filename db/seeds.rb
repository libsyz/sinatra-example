require 'faker'

10.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name,
                              address: Faker::Address.street_address,
                              rating: rand(5))
  restaurant.save
end
