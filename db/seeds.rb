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
Session.destroy_all
Course.destroy_all

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
    order_id:        Order.all.sample,
    credits_amount:  rand(1..100)
  )
  user.save!
end

puts 'Creating courses...'

    # name:          rand('Sprint', 'Fat Burner', 'Total Fit', 'Brain Muscle', 'Conditioning', 'Combat Yoga', 'Iron But', 'Step By Step', 'Sprint', 'Body Talk'),
    # category:      rand('Cardio', 'Tonification', 'Renforcement', 'Balance', 'Cross Training'),

  url_one = "https://static1.squarespace.com/static/578a2a71bebafb8c813f4a4f/t/57aa297af7e0ab798376a44c/1470769545579/nr-69.jpg?format=1500w"
  course_one = Course.new(
    name:          "Hatha Yoga",
    studio:        "Feel Good Yoga",
    category:      "Souplesse",
    description:   "Cours facilitant instantanément la détente mentale et musculaire. A moyen terme, il développe la souplesse et favorise une meilleure santé générale de chacun.",
    coach:         "Sophie",
    street:       "Rue Chaucrau 3-5, 1003 Lausanne",
    likes:         150,
    kcal:          200,
    duration:      60,
    credits_cost:  3,
  )
  course_one.remote_photo_url = url_one
  course_one.save!

  url_two = "https://www.crossfit-lausanne.ch/wp-content/uploads/2015/05/la-box-arriere.jpg"
  course_two = Course.new(
    name:          "CrossFit",
    studio:        "CrossFit Lausanne",
    category:      "Cardio",
    description:   "CrossFit est un terme désignant une méthode de conditionnement physique, appelé ainsi parce qu’il mélange différentes activités physiques et sportives préexistantes. Son fonctionnement est axé autour de dix compétences athlétiques : endurance cardiovasculaire et respiratoire, endurance musculaire, force, souplesse, puissance, vitesse, agilité, psychomotricité, équilibre et précision. Ceci afin de répliquer des mouvements fonctionnels du quotidien. La définition du CrossFit peut se résumer en 3 points : des exercices constamment variés, des mouvement fonctionnels et pratiqué à haute intensité. Jette un coup d’oeil à la vidéo ci-dessous qui t’en dira plus, non seulement sur la manière de s’entraîner, mais également sur l’ambiance qui entoure le CrossFit.",
    coach:         "Franck",
    street:        "Chemin d'Entre-Bois 21",
    NPA:           "1018",
    city:          "Lausanne",
    likes:         250,
    kcal:          600,
    duration:      55,
    credits_cost:  5,
  )
  course_two.remote_photo_url = url_two
  course_two.save!

  url_three = "https://static1.squarespace.com/static/578a2a71bebafb8c813f4a4f/t/57aa297af7e0ab798376a44c/1470769545579/nr-69.jpg?format=1500w"
  course_three = Course.new(
    name:          "Kick Boxing",
    studio:        "Lausanne Wushu",
    category:      "Arts Martiaux",
    description:   "Le seul club lausannois à combiner autant d'arts martiaux et sports de combat. Depuis 1978, le National Sporting Club est LA référence. Avec une salle de musculation en complément puissance et cardio, et un ring de 5x5m, le NSC reste le 'Fight Club' romand le plus complet. En pratique douce comme en compétition extrême.",
    coach:         "David",
    street:        "Rue du Grand Pré 4",
    NPA:           "1007",
    city:          "Lausanne",
    likes:         50,
    kcal:          600,
    duration:      75,
    credits_cost:  3,
  )
  course_three.remote_photo_url = url_three
  course_three.save!

  url_four = "https://lemag.nikonclub.fr/wp-content/uploads/2017/05/Hard-Fight-3.jpg"
  course_four = Course.new(
    name:          "Hatha Yoga",
    studio:        "NSC Warriors",
    category:      "Arts Martiaux",
    description:   "Le seul club lausannois à combiner autant d'arts martiaux et sports de combat. Depuis 1978, le National Sporting Club est LA référence. Avec une salle de musculation en complément puissance et cardio, et un ring de 5x5m, le NSC reste le 'Fight Club' romand le plus complet. En pratique douce comme en compétition extrême.",
    coach:         "Sophie",
    street:        "Rue Chaucrau 3-5",
    NPA:           "1003",
    city:          "Lausanne",
    likes:         150,
    kcal:          500,
    duration:      60,
    credits_cost:  4,
  )
  course_four.remote_photo_url = url_four
  course_four.save!

  url_five = "http://www.deekaydanceschool.ch/site/_lib/_cache/img/thumbs/940x0-119529674638129337895069134363618431603606o.jpg"
  course_five = Course.new(
    name:          "Hip-Hop ",
    studio:        "Deekay Dance School",
    category:      "Danse",
    description:   "Peu importe vos envies, les professeurs s'adaptent et sauront vous pousser pour faire des concours, des battles ou tout simplement progresser personnellement. Nous sommes également très intéressés à l'histoire des danses que nous enseignons, c'est pourquoi les élèves peuvent aussi nous poser des questions s'ils veulent aller plus loin dans le développement de leur activité ou passion.",
    coach:         "Sofia",
    street:        "Avenue Tivoli 60",
    NPA:           "1007",
    city:          "Lausanne",
    likes:         121,
    kcal:          300,
    duration:      60,
    credits_cost:  2,
  )
  course_five.remote_photo_url = url_five
  course_five.save!

puts 'Creating sessions...'

  session_one = Session.new(
    start_time: DateTime.new(2019,3,1,17),
    course_id:  (Course.all.sample).id,
  )
  session_one.save!

  session_two = Session.new(
    start_time: DateTime.new(2019,3,1,17),
    course_id:  (Course.all.sample).id,
  )
  session_two.save!

  session_three = Session.new(
    start_time: DateTime.new(2019,3,1,18),
    course_id:  (Course.all.sample).id,
  )
  session_three.save!

  session_four = Session.new(
    start_time: DateTime.new(2019,3,1,18),
    course_id:  (Course.all.sample).id,
  )
  session_four.save!

  session_five = Session.new(
    start_time: DateTime.new(2019,3,1,18),
    course_id:  (Course.all.sample).id,
  )
  session_five.save!

  session_six = Session.new(
    start_time: DateTime.new(2019,3,1,18),
    course_id:  (Course.all.sample).id,
  )
  session_six.save!

  session_seven = Session.new(
    start_time: DateTime.new(2019,3,1,19.5),
    course_id:  (Course.all.sample).id,
  )
  session_seven.save!

  session_eight = Session.new(
    start_time: DateTime.new(2019,3,1,19),
    course_id:  (Course.all.sample).id,
  )
  session_eight.save!

  session_nine = Session.new(
    start_time: DateTime.new(2019,3,1,19),
    course_id:  (Course.all.sample).id,
  )
  session_nine.save!

  session_ten = Session.new(
    start_time: DateTime.new(2019,3,1,19),
    course_id:  (Course.all.sample).id,
  )
  session_ten.save!


# puts 'Creating reviews...'

# 20.times do
#   review = Review.new(
#     content:        Faker::Lorem.paragraphs(1),
#     # user_id:        rand(1..4),
#     # course_id:      rand(1..10)
#   )
#   review.save!
# end

puts 'Finished!'
