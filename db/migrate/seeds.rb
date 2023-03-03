puts "🌱 Seeding data..."


20.times do
    product = Product.create(
        name: Faker::Name.name,
    )

    user = User.create(
        name: Faker::Name.name,
    )
    rand(1..5).times do
        Review.create(
            star_rating: rand(1..5),
            comment: Faker::Lorem.sentence,
            user_id: User.pluck(:id).sample,
            product_id: Product.pluck(:id).sample
        )
    end
end