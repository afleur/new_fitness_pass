# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'cleaning DB'

puts "Destroy Booking"
Booking.destroy_all
puts "Destroy Activity"
Activity.destroy_all
puts "Destroy Course"
Course.destroy_all
puts "Destroy order"
Order.destroy_all
puts "Destroy review"
Review.destroy_all
puts "Destroy User"
User.destroy_all

puts 'Creating orders...'

# 10.times do
#   order = Order.new(
#     date:           Faker::Date.backward(365),
#     credits_value:  rand(50..100),
#     cost:           rand(50..100)
#   )
#   order.save!
# end


# puts 'Creating users...'

# 4.times do
#   user = User.new(
#     email:           Faker::Internet.email,
#     password:        Faker::Internet.password,
#     first_name:      Faker::Name.first_name,
#     last_name:       Faker::Name.last_name,
#     street:          Faker::Address.street_address,
#     NPA:             Faker::Address.postcode,
#     city:            Faker::Address.city,
#     birth_date:      Faker::Date.birthday(18, 65),
#     order_id:        Order.all.sample,
#     credits_amount:  rand(1..100)
#   )
#   user.save!
# end

clara = User.new(
    email:           'clara@gmail.com',
    password:        'clara123',
    first_name:      'Clara',
    last_name:       'Chapuis',
    street:          'Rue Pichard 20',
    NPA:              1003,
    city:            'Lausanne',
    birth_date:      "Mar, 28 Mar 1986",
    credits_amount:  25,
  )
  clara.save!


puts 'Creating courses...'

    # name:          rand('Sprint', 'Fat Burner', 'Total Fit', 'Brain Muscle', 'Conditioning', 'Combat Yoga', 'Iron But', 'Step By Step', 'Sprint', 'Body Talk'),
    # category:      rand('Cardio', 'Tonification', 'Renforcement', 'Balance', 'Cross Training'),

  url_one = "https://static1.squarespace.com/static/578a2a71bebafb8c813f4a4f/t/57aa297af7e0ab798376a44c/1470769545579/nr-69.jpg?format=1500w"
  course_one = Course.new(
    name:          "Hatha Yoga",
    studio:        "Feel Good Yoga",
    category:      "Souplesse",
    description:   "Cours facilitant instantanément la détente mentale et musculaire. A moyen terme, il développe la souplesse et favorise une meilleure santé générale de chacun.",
    infos:         "Code de l'immeuble: 78654 avant 8h et après 19h30",
    coach:         "Sophie",
    street:        "Rue Chaucrau 3-5",
    npa:           "1003",
    city:          "Lausanne",
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
    infos:         "Prévoir un cadenas, location éventuelle sur place \n Location éventuelle de serviettes sur place \n Possibilité d'acheter une bouteille d'eau sur place",
    street:        "Chemin d'Entre-Bois 21",
    npa:           "1018",
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
    infos:         "- Prévoir un cadenas pour les casiers \n -Douche et vestiaire",
    coach:         "David",
    street:        "Rue du Grand Pré 4",
    npa:           "1007",
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
    name:          "Boxe anglaise",
    studio:        "NSC Warriors",
    category:      "Arts Martiaux",
    description:   "Le seul club lausannois à combiner autant d'arts martiaux et sports de combat. Depuis 1978, le National Sporting Club est LA référence. Avec une salle de musculation en complément puissance et cardio, et un ring de 5x5m, le NSC reste le 'Fight Club' romand le plus complet. En pratique douce comme en compétition extrême.",
    coach:         "Franck",
    street:        "Rue Chaucrau 3-5",
    infos:         "Prévoir un cadenas, location éventuelle sur place \n Location éventuelle de serviettes sur place \n Possibilité d'acheter une bouteille d'eau sur place",
    npa:           "1003",
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
    infos:         "Prévoir un cadenas, location éventuelle sur place \n Location éventuelle de serviettes sur place \n Possibilité d'acheter une bouteille d'eau sur place",
    coach:         "Sofia",
    street:        "Chemin de Boissonnet 79",
    npa:           "1010",
    city:          "Lausanne",
    likes:         121,
    kcal:          300,
    duration:      60,
    credits_cost:  2,
  )
  course_five.remote_photo_url = url_five
  course_five.save!

  url_six = "https://lasalle-lausanne.ch/wp-content/uploads/2017/04/Capture-1-1024x449.png"
  course_six = Course.new(
    name:          "Spinning",
    studio:        "La Salle",
    category:      "Cardio",
    description:   "Découvrez le Spinning : du cycling indoor, dans une ambiance à la fois intimiste et survoltée, dopé par un coach dynamique et une musique rythmée.

Vous travaillez à la fois le bas et le haut du corps à l'aide d'accessoires, et vous appréciez vous donner à fond, portés par l'énergie du coach et la dynamique du groupe !

Dépassement de soi et expérience unique !",
    infos:         "IMPORTANT les portes de la salle ferment 5 minutes avant
Tout le nécessaire pour la douche et le soin est mis à disposition
Chaussures de spinning fournies
Bouteilles d'eau à 1€",
    coach:         "Marc",
    street:        "Place de la Sallaz 35",
    npa:           "1010",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          650,
    duration:      45,
    credits_cost:  2,
  )
  course_six.remote_photo_url = url_six
  course_six.save!

  url_seven = "http://www.fitness-suisse.com/contenu/uploads/2016/07/bodycombat-1080x675.jpg"
  course_seven = Course.new(
    name:          "Body Combat",
    studio:        "Black 2000",
    category:      "Cardio",
    description:   "Le BODYCOMBAT™ est un puissant cours cardio extrêmement défoulant. Ce programme hautement énergique s'inspire des arts martiaux et puise dans des disciplines aussi variées que le karaté, la boxe, le taekwondo, le tai chi et le muay thai. Rythmé par une musique entraînante et guidé par des instructeurs performants, vous brûlez des calories et améliorez votre capacité cardiovasculaire à force de frappes, de coups de poing, de coups de pied et de katas.",
    infos:         "Des vestiaires avec casiers et douche sont à disposition - Prévoir un cadenas pour son casier",
    coach:         "Baptiste",
    street:        "Rue de Venise 3",
    npa:           "1870",
    city:          "Monthey",
    likes:         rand(50..350),
    kcal:          737,
    duration:      55,
    credits_cost:  2,
  )
  course_seven.remote_photo_url = url_seven
  course_seven.save!

  url_seven = "http://www.fitness-suisse.com/contenu/uploads/2016/07/bodycombat-1080x675.jpg"
  course_seven = Course.new(
    name:          "Body Combat",
    studio:        "Black 2000",
    category:      "Cardio",
    description:   "Le BODYCOMBAT™ est un puissant cours cardio extrêmement défoulant. Ce programme hautement énergique s'inspire des arts martiaux et puise dans des disciplines aussi variées que le karaté, la boxe, le taekwondo, le tai chi et le muay thai. Rythmé par une musique entraînante et guidé par des instructeurs performants, vous brûlez des calories et améliorez votre capacité cardiovasculaire à force de frappes, de coups de poing, de coups de pied et de katas.",
    infos:         "Des vestiaires avec casiers et douche sont à disposition - Prévoir un cadenas pour son casier",
    coach:         "Dino",
    street:        "Rue de Venise 3",
    npa:           "1870",
    city:          "Monthey",
    likes:         rand(50..350),
    kcal:          737,
    duration:      55,
    credits_cost:  2,
  )
  course_seven.remote_photo_url = url_seven
  course_seven.save!

  url_eight = "http://www.fitness-suisse.com/contenu/uploads/2016/07/bodycombat-1080x675.jpg"
  course_eight = Course.new(
    name:          "Pole Dance",
    studio:        "Urban Shape",
    category:      "Danse",
    description:   "Discipline sportive et artistique, elle convient aux personnes désirant se renforcer musculairement, développer une technique acrobatique et pour s'amuser et danser autour d'une barre.",
    infos:         "Code de la porte: 1903A
Salle détente conviviale pour vous changer avec des casiers
Salle de bains, toilettes et douches
Prévoir une serviette
Prévoir un short et un top pour avoir les bras et jambes dégagées
Une paire de chaussure à talon est recommandé
Le port de bijoux est interdit",
    coach:         "Denitsa",
    street:        "Rue du Grand-Pré 9",
    npa:           "1201",
    city:          "Genève",
    likes:         rand(50..350),
    kcal:          350,
    duration:      45,
    credits_cost:  3,
  )
  course_eight.remote_photo_url = url_eight
  course_eight.save!

  url_nine = "https://lmimirror3pvr.azureedge.net/static/media/10902/658d9a44-2eb1-439c-8236-240fdec3a18b/grit-research-landing-page-960x540.jpg"
  course_nine = Course.new(
    name:          "Grit Training",
    studio:        "Performa Training",
    category:      "Cardio",
    description:   "GRIT est un cours qui vous poussera jusqu'à l'extrême. Profitez d'une attention personnalisée dans un small group ou team training. Votre instructeur sera à vos côtés tout au long de l'entraînement afin de vous motiver, vous et votre équipe. Vous n'imaginez pas jusqu'où vous pourrez aller ! Obtenez enfin les résultats que vous cherchez ! Trois programmes uniques pour être en forme et perdre du poids rapidement. Un challenge intense de 30 minutes · Une musique explosive pour pousser votre énergie jusqu'à l'extrême · Des instructeurs inspirants qui vont motiver chaque individu, de manière individuelle tout en exploitant la force du travail en équipe.",
    infos:         "- Prévoir un cadenas - Possibilité d'acheter une bouteille d'au et fontaines mises à disposition",
    coach:         "David",
    street:        "Rue des Vollandes 19",
    npa:           "1207",
    city:          "Genève",
    likes:         rand(50..350),
    kcal:          400,
    duration:      30,
    credits_cost:  2,
  )
  course_nine.remote_photo_url = url_nine
  course_nine.save!

  url_ten = "https://qigongtaichicentre.ch/wp-content/uploads/2016/03/img_cat.jpg"
  course_ten = Course.new(
    name:          "Taï-Chi",
    studio:        "Centre de Qi Gong et Tai Chi",
    category:      "Balance",
    description:   "Dérivé des arts martiaux, le thai-chi est une discipline corporelle d’origine chinoise comportant un ensemble de mouvements continus et circulaires exécutés avec lenteur et précision dans un ordre préétabli. Il met aussi l’accent sur la maîtrise de la respiration. La pratique vise entre autres à améliorer la souplesse, à renforcer le système musculosquelettique et à maintenir une bonne santé physique, mentale et spirituelle. Grâce à son côté méditatif et à l’extrême précision des gestes, le thai-chi permet d’apaiser le mental et d’améliorer la concentration, la vivacité d’esprit et la mémoire. Il favorise aussi une meilleure prise de conscience de soi et de son environnement et contribue à harmoniser le Qi.",
    infos:         "- Prévoir un cadenas - Possibilité d'acheter une bouteille d'au et fontaines mises à disposition",
    coach:         "Catherine",
    street:        "Rue du Maupas 6",
    npa:           "1004",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          400,
    duration:      30,
    credits_cost:  2,
  )
  course_ten.remote_photo_url = url_ten
  course_ten.save!

  url_eleven = "https://d1heoihvzm7u4h.cloudfront.net/3a3c52bfd2f6a9deb9b7f5ca3dcbfdc464a65334_21_BODYPUMP3200x1560px_528x258.jpg"
  course_eleven = Course.new(
    name:          "Body Pump",
    studio:        "Green Club Romanel",
    category:      "Renforcement",
    description:   "BODYPUMP™ est le cours original avec poids qui sculpte, renforce et tonifie tout votre corps rapidement! Vos muscles ne se formeront pas tout seul! Grâce au BODYPUMP™, votre corps tout entier se renforce et se tonifie. En mettant l'accent sur l'utilisation de poids legers et sur la repetition des mouvements, vous allez brûler des calories, tonifier votre corps et augmenter votre masse musculaire.",
    infos:         "- Prévoir un cadenas, location éventuelle sur place - Location éventuelle de serviettes sur place - Prévoir une pièce d'identité",
    coach:         "Thierry",
    street:        "Chemin des Epinettes 1",
    npa:           "1032",
    city:          "Romanel-sur-Lausanne",
    likes:         rand(50..350),
    kcal:          400,
    duration:      30,
    credits_cost:  2,
  )
  course_eleven.remote_photo_url = url_eleven
  course_eleven.save!


puts 'Creating activities...'

  activity_one = Activity.new(
    start_time: DateTime.new(2019,3,8,17),
    course_id:  (Course.all.sample).id,
  )
  activity_one.save!

  activity_two = Activity.new(
    start_time: DateTime.new(2019,3,8,17),
    course_id:  (Course.all.sample).id,
  )
  activity_two.save!

  activity_three = Activity.new(
    start_time: DateTime.new(2019,3,9,18),
    course_id:  (Course.all.sample).id,
  )
  activity_three.save!

  activity_four = Activity.new(
    start_time: DateTime.new(2019,3,8,18),
    course_id:  (Course.all.sample).id,
  )
  activity_four.save!

  activity_five = Activity.new(
    start_time: DateTime.new(2019,3,8,18),
    course_id:  (Course.all.sample).id,
  )
  activity_five.save!

  activity_six = Activity.new(
    start_time: DateTime.new(2019,3,8,18),
    course_id:  (Course.all.sample).id,
  )
  activity_six.save!

  activity_seven = Activity.new(
    start_time: DateTime.new(2019,3,8,19.5),
    course_id:  (Course.all.sample).id,
  )
  activity_seven.save!

  activity_eight = Activity.new(
    start_time: DateTime.new(2019,3,8,19),
    course_id:  (Course.all.sample).id,
  )
  activity_eight.save!

  activity_nine = Activity.new(
    start_time: DateTime.new(2019,3,8,19),
    course_id:  (Course.all.sample).id,
  )
  activity_nine.save!

  activity_ten = Activity.new(
    start_time: DateTime.new(2019,3,8,19),
    course_id:  (Course.all.sample).id,
  )
  activity_ten.save!

  Activity.create!(
    start_time: DateTime.new(2019,3,10,17),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,10,17),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,10,18),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,10,18),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,10,19),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,10,19),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,10,20),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,10,20),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,10,21),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,10,22),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,17),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,17),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,18),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,18),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,19),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,19),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,20),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,20),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,21),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,11,22),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,17),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,17),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,18),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,18),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,19),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,19),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,20),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,20),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,21),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,22),
    course_id:  (Course.all.sample).id,
  )

    Activity.create!(
    start_time: DateTime.new(2019,3,12,17),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,17),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,18),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,18),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,19),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,19),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,20),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,20),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,21),
    course_id:  (Course.all.sample).id,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,12,22),
    course_id:  (Course.all.sample).id,
  )

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
