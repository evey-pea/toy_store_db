# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
total_users = 7
total_manufacturers = 6
total_toys = 80

def random_character
    return[Faker::DcComics.hero, 
        Faker::DcComics.heroine, 
        Faker::DcComics.villain, 
        Faker::DcComics.name].sample
end

def random_manufacturer_name
    return [
        "DC Toys",
        "ACME Toy CO.",
        "Fametek LLC"
    ].sample
end

for i in 1..total_users
    User.create(
        email: "#{Faker::Name.first_name}@toy_store.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3)
    )
end

for i in 1..total_manufacturers
    Manufacturer.create(
        name: random_manufacturer_name(),
        location: Faker::Address.country
    )
end

for i in 1..total_toys
    Toy.create(
        name: random_character(),
        description: Faker::DcComics.title,
        date_posted: Time.now,
        user_id: Faker::Number.between(from: 1, to: total_users),
        manufacturer_id: Faker::Number.between(from: 1, to: total_manufacturers)
    )
end