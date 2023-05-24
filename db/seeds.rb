# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Clear existing records
Review.delete_all
Restaurant.delete_all

# Create restaurants
10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: Restaurant::CATEGORIES.sample
  )

  if restaurant.save
    # Create reviews for each restaurant
    3.times do
      review = Review.new(
        content: Faker::Lorem.paragraph(sentence_count: 2),
        rating: rand(0..5),
        restaurant: restaurant
      )
      review.save
    end
  end
end
