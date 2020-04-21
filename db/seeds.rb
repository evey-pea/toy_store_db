# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
total_users = 5

for i in 1..total_users
    User.create(
        email: "#{Faker::Name.first_name}@toy_store.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3)
    )
end
for i in 1..20
    Toy.create(
        name: "Toy#{i}",
        description: "Toy#{i} is super safe",
        date_posted: Time.now,
        user_id: Faker::Number.between(from: 1, to: 5) 
    )
end