# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'cleaning DB'

Order.destroy_all
Review.destroy_all
User.destroy_all

puts 'Creating orders...'

10.times do
  order = Order.new(
    date:           Faker::Date.backward(365),
    credits_value:  rand(50..100),
    cost:           rand(50..100)
  )
  order.save!
end


puts 'Creating users...'

4.times do
  user = User.new(
    email:           Faker::Internet.email,
    password:        Faker::Internet.password,
    first_name:      Faker::Name.first_name,
    last_name:       Faker::Name.last_name,
    street:          Faker::Address.street_address,
    NPA:             Faker::Address.postcode,
    city:            Faker::Address.city,
    birth_date:      Faker::Date.birthday(18, 65),
    order_id:        rand(1..10),
    credits_amount:  rand(1..100)
  )
  user.save!
end

puts 'Creating courses...'

    # name:          rand('Sprint', 'Fat Burner', 'Total Fit', 'Brain Muscle', 'Conditioning', 'Combat Yoga', 'Iron But', 'Step By Step', 'Sprint', 'Body Talk'),
    # category:      rand('Cardio', 'Tonification', 'Renforcement', 'Balance', 'Cross Training'),

  course_one = Course.new(
    name:          "Hatha Yoga"
    description:   "Cours facilitant instantanément la détente mentale et musculaire. A moyen terme, il développe la souplesse et favorise une meilleure santé générale de chacun.",
    coach:         "Sophie",
    address:       Faker::Address.street_address,
    likes:         150,
    kcal:          200,
    duration:      60,
    credits_cost:  3,


  )
  course.save!
end

puts 'Creating reviews...'

20.times do
  review = Review.new(
    content:        Faker::Lorem.paragraphs(1),
    # user_id:        rand(1..4),
    # course_id:      rand(1..10)
  )
  review.save!
end

puts 'Finished!'
