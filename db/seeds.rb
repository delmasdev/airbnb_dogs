# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
City.reset_pk_sequence
Dogsitter.destroy_all
Dogsitter.reset_pk_sequence
Dog.destroy_all
Dog.reset_pk_sequence
Stroll.destroy_all
Stroll.reset_pk_sequence
JoinTableDogStroll.destroy_all
JoinTableDogStroll.reset_pk_sequence

require 'faker'


5.times do |index|
  City.create(city_name: Faker::Address.city)
end


10.times do |index|
  Dogsitter.create(dogsitter_name: Faker::Name.last_name,
    city_id:  Faker::Number.between(from: 1, to: 5)
    )
end

30.times do |index|
  Dog.create(dog_name: Faker::Creature::Dog.name,
    dog_pedigree: Faker::Creature::Dog.breed,
    city_id:  Faker::Number.between(from: 1, to: 5)
  )
end

50.times do |index|
  Stroll.create(dogsitter_id: Faker::Number.between(from: 1, to: 10),
    city_id:  Faker::Number.between(from: 1, to: 5),
    date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30, format: :default)
  )
end

50.times do |index|
  JoinTableDogStroll.create(dog_id: Faker::Number.between(from: 1, to: 30),
    stroll_id: Faker::Number.between(from: 1, to: 50)
  )
end