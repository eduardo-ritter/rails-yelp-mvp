puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all
sleep(2)
puts 'Creating restaurants...'
sleep(1)
# CRIANDO RESTAURANTES
20.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Restaurant #{Restaurant.last.name} created"
end
sleep(1)
puts 'Done!'
sleep(2)
# CRIANDO REVIEWS
puts 'Creating Reviews...'
sleep(2)
80.times do
  # puts rate
  # puts rate.class
  Review.create!(
    rating: rand(0..5),
    content: Faker::Restaurant.review,
    restaurant_id: rand(Restaurant.first.id..Restaurant.last.id)
  )
  puts "Review #{Review.last.id} created"
end
sleep(1)
puts 'Done!'
