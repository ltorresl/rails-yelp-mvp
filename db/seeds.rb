puts "Cleaning database first"
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!
end

puts "Restaurants created!"
