# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning tables'

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

puts 'Creating Clara...'

clara = User.new(
    email:           'clara@gmail.com',
    password:        'clara123',
    first_name:      'Clara',
    last_name:       'Chapuis',
    street:          'Rue Pichard 20',
    NPA:              1003,
    city:            'Lausanne',
    birth_date:      "Mar, 28 Mar 1986",
    credits_amount:  5,
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
    infos:         "Prévoir un cadenas, location éventuelle sur place<br>Location éventuelle de serviettes sur place<br>Possibilité d'acheter une bouteille d'eau sur place",
    street:        "Chemin d'Entre-Bois 21",
    npa:           "1018",
    city:          "Lausanne",
    likes:         250,
    kcal:          520,
    duration:      55,
    credits_cost:  5,
  )
  course_two.remote_photo_url = url_two
  course_two.save!

  url_three = "http://kabuto.ch/wp-content/uploads/2016/06/kickboxing.jpg"
  course_three = Course.new(
    name:          "Kick Boxing",
    studio:        "Lausanne Wushu",
    category:      "Arts Martiaux",
    description:   "Le seul club lausannois à combiner autant d'arts martiaux et sports de combat. Depuis 1978, le National Sporting Club est LA référence. Avec une salle de musculation en complément puissance et cardio, et un ring de 5x5m, le NSC reste le 'Fight Club' romand le plus complet. En pratique douce comme en compétition extrême.",
    infos:         "Prévoir un cadenas pour les casiers<br>Douches et vestiaires",
    coach:         "David",
    street:        "Rue du Grand Pré 4",
    npa:           "1007",
    city:          "Lausanne",
    likes:         50,
    kcal:          610,
    duration:      75,
    credits_cost:  3,
  )
  course_three.remote_photo_url = url_three
  course_three.save!

  url_four = "http://www.sportsdecontact.fr/wp-content/uploads/sites/15/2016/01/1024px-Finales_du_Championnat_d%E2%80%99Ile-de-France_de_boxe_anglaise_amateur_2009_002-758x506.jpeg"
  course_four = Course.new(
    name:          "Boxe anglaise",
    studio:        "NSC Warriors",
    category:      "Arts Martiaux",
    description:   "Le seul club lausannois à combiner autant d'arts martiaux et sports de combat. Depuis 1978, le National Sporting Club est LA référence. Avec une salle de musculation en complément puissance et cardio, et un ring de 5x5m, le NSC reste le 'Fight Club' romand le plus complet. En pratique douce comme en compétition extrême.",
    coach:         "Franck",
    street:        "Rue Chaucrau 3-5",
    infos:         "Prévoir un cadenas, location éventuelle sur place<br>Location éventuelle de serviettes sur place<br>Possibilité d'acheter une bouteille d'eau sur place",
    npa:           "1003",
    city:          "Lausanne",
    likes:         150,
    kcal:          580,
    duration:      75,
    credits_cost:  4,
  )
  course_four.remote_photo_url = url_four
  course_four.save!

  url_five = "http://www.deekaydanceschool.ch/site/_lib/_cache/img/thumbs/940x0-119529674638129337895069134363618431603606o.jpg"
  course_five = Course.new(
    name:          "Hip-Hop",
    studio:        "Deekay Dance School",
    category:      "Danse",
    description:   "Peu importe vos envies, les professeurs s'adaptent et sauront vous pousser pour faire des concours, des battles ou tout simplement progresser personnellement. Nous sommes également très intéressés à l'histoire des danses que nous enseignons, c'est pourquoi les élèves peuvent aussi nous poser des questions s'ils veulent aller plus loin dans le développement de leur activité ou passion.",
    infos:         "Prévoir un cadenas, location éventuelle sur place<br>Location éventuelle de serviettes sur place<br>Possibilité d'acheter une bouteille d'eau sur place",
    coach:         "Sofia",
    street:        "Boulevard de Grancy 37",
    npa:           "1006",
    city:          "Lausanne",
    likes:         121,
    kcal:          300,
    duration:      60,
    credits_cost:  3,
  )
  course_five.remote_photo_url = url_five
  course_five.save!

  url_six = "https://lavieactive.com/images/dyn-cours/IMG_7013-r.jpg"
  course_six = Course.new(
    name:          "Spinning",
    studio:        "La Salle",
    category:      "Cardio",
    description:   "Découvrez le Spinning : du cycling indoor, dans une ambiance à la fois intimiste et survoltée, dopé par un coach dynamique et une musique rythmée.

Vous travaillez à la fois le bas et le haut du corps à l'aide d'accessoires, et vous appréciez vous donner à fond, portés par l'énergie du coach et la dynamique du groupe !

Dépassement de soi et expérience unique !",
    infos:         "IMPORTANT les portes de la salle ferment 5 minutes avant
Tout le nécessaire pour la douche et le soin est mis à disposition<br>Chaussures de spinning fournies<br>Bouteilles d'eau à 1.-",
    coach:         "Marc",
    street:        "Place de la Sallaz 35",
    npa:           "1010",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          550,
    duration:      45,
    credits_cost:  3,
  )
  course_six.remote_photo_url = url_six
  course_six.save!

  url_seven = "http://www.fitness-suisse.com/contenu/uploads/2016/07/bodycombat-1080x675.jpg"
  course_seven = Course.new(
    name:          "Body Combat",
    studio:        "Black 2000",
    category:      "Cardio",
    description:   "Le BODYCOMBAT™ est un puissant cours cardio extrêmement défoulant. Ce programme hautement énergique s'inspire des arts martiaux et puise dans des disciplines aussi variées que le karaté, la boxe, le taekwondo, le tai chi et le muay thai. Rythmé par une musique entraînante et guidé par des instructeurs performants, vous brûlez des calories et améliorez votre capacité cardiovasculaire à force de frappes, de coups de poing, de coups de pied et de katas.",
    infos:         "Des vestiaires avec casiers et douche sont à disposition<br>Prévoir un cadenas pour son casier",
    coach:         "Baptiste",
    street:        "Place Saint-François 1",
    npa:           "1003",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          560,
    duration:      55,
    credits_cost:  3,
  )
  course_seven.remote_photo_url = url_seven
  course_seven.save!

  url_eight = "https://storage.googleapis.com/static.brusselslife.be/media/140190/conversions/main_image.jpg"
  course_eight = Course.new(
    name:          "Pole Dance",
    studio:        "Urban Shape",
    category:      "Danse",
    description:   "Discipline sportive et artistique, elle convient aux personnes désirant se renforcer musculairement, développer une technique acrobatique et pour s'amuser et danser autour d'une barre.",
    infos:         "Code de la porte: 1903A
<br>Salle détente conviviale pour vous changer avec des casiers
<br>Salle de bains, toilettes et douches
<br>Prévoir une serviette
<br>Prévoir un short et un top pour avoir les bras et jambes dégagées
<br>Une paire de chaussure à talon est recommandé
<br>Le port de bijoux est interdit",
    coach:         "Denitsa",
    street:        "Avenue d'Echallens 70",
    npa:           "1004",
    city:          "Lausanne",
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
    infos:         "Prévoir un cadenas<br>Possibilité d'acheter une bouteille d'eau et fontaines mises à disposition",
    coach:         "David",
    street:        "Rue de Genève 33",
    npa:           "1003",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          400,
    duration:      30,
    credits_cost:  3,
  )
  course_nine.remote_photo_url = url_nine
  course_nine.save!

  url_ten = "http://blog.awma.com/wp-content/uploads/2013/06/squating.jpg"
  course_ten = Course.new(
    name:          "Taï-Chi",
    studio:        "Centre de Qi Gong et Tai Chi",
    category:      "Souplesse",
    description:   "Dérivé des arts martiaux, le thai-chi est une discipline corporelle d’origine chinoise comportant un ensemble de mouvements continus et circulaires exécutés avec lenteur et précision dans un ordre préétabli. Il met aussi l’accent sur la maîtrise de la respiration. La pratique vise entre autres à améliorer la souplesse, à renforcer le système musculosquelettique et à maintenir une bonne santé physique, mentale et spirituelle. Grâce à son côté méditatif et à l’extrême précision des gestes, le thai-chi permet d’apaiser le mental et d’améliorer la concentration, la vivacité d’esprit et la mémoire. Il favorise aussi une meilleure prise de conscience de soi et de son environnement et contribue à harmoniser le Qi.",
    infos:         "Prévoir un cadenas <br>Possibilité d'acheter une bouteille d'eau et fontaines mises à disposition",
    coach:         "Catherine",
    street:        "Rue du Maupas 6",
    npa:           "1004",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          370,
    duration:      30,
    credits_cost:  3,
  )
  course_ten.remote_photo_url = url_ten
  course_ten.save!

  url_eleven = "https://d1heoihvzm7u4h.cloudfront.net/3a3c52bfd2f6a9deb9b7f5ca3dcbfdc464a65334_21_BODYPUMP3200x1560px_528x258.jpg"
  course_eleven = Course.new(
    name:          "Body Pump",
    studio:        "Green Club Romanel",
    category:      "Renforcement",
    description:   "BODYPUMP™ est le cours original avec poids qui sculpte, renforce et tonifie tout votre corps rapidement! Vos muscles ne se formeront pas tout seul! Grâce au BODYPUMP™, votre corps tout entier se renforce et se tonifie. En mettant l'accent sur l'utilisation de poids legers et sur la repetition des mouvements, vous allez brûler des calories, tonifier votre corps et augmenter votre masse musculaire.",
    infos:         "Prévoir un cadenas<br>Location éventuelle de serviettes sur place<br>Prévoir une pièce d'identité",
    coach:         "Thierry",
    street:        "Boulevard de Grancy 14",
    npa:           "1006",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          400,
    duration:      30,
    credits_cost:  3,
  )
  course_eleven.remote_photo_url = url_eleven
  course_eleven.save!

  url_twelve = "http://www.stationfoch.fr/wp-content/uploads/2018/10/Cxworx-pour-mosaique-SFA.jpg"
  course_twelve = Course.new(
    name:          "CXWORX",
    studio:        "Holmes Place",
    category:      "Renforcement",
    description:   "CXWORX™, c'est tout ce dont vous avez besoin pour offrir à votre corps un entraînement intense qui va le tonifier, améliorer votre force fonctionnelle et donc votre mobilité, votre équilibre et prévenir les blessures.",
    infos:         "Prévoir un cadenas, location éventuelle sur place<br>Location éventuelle de serviettes sur place<br>Prévoir une pièce d'identité",
    coach:         "Thierry",
    street:        "Boulevard de Grancy 14",
    npa:           "1006",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          230,
    duration:      45,
    credits_cost:  4,
  )
  course_twelve.remote_photo_url = url_twelve
  course_twelve.save!

  url_thirteen = "http://www.sowai-aquasports.fr/wp-content/uploads/2014/05/aquabike.jpg"
  course_thirteen = Course.new(
    name:          "Aquabike",
    studio:        "AquaMed",
    category:      "Cardio",
    description:   "Un cours aqua tout en douceur !

Retrouvez le plaisir de l'eau grâce à une séance mobilisant de multiples accessoires : gants palmés, frites en mousse, ballons, flotteurs, planches... pour vous tonifier en musique, renforcer l’ensemble du corps et vous procurer une grande sensation de bien-être.

Ludique et efficace ",
    infos:         "Prévoir un bonnet de bain <br>Vente de serviettes",
    coach:         "Florent",
    street:        "Chemin du Martinet 28",
    npa:           "1007",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          200,
    duration:      45,
    credits_cost:  3,
  )
  course_thirteen.remote_photo_url = url_thirteen
  course_thirteen.save!

  url_fourteen = "http://www.eden-form.com/files/cours-stretching-bordeaux-2yGvzXy.jpg"
  course_fourteen = Course.new(
    name:          "Stretching",
    studio:        "Cabinet de stretching postural",
    category:      "Souplesse",
    description:   "Un cours souplesse et détente pour se relaxer, respirer et améliorer son bien-être physique.
Destiné aux sportifs comme à ceux qui souhaitent pratiquer une activité tout en douceur, le stretching permet de relâcher les chaînes musculaires et d'améliorer l'état des articulations.",
    infos:         "Location éventuelle de serviettes sur place
    <br>Possibilité d’acheter une bouteille d’eau sur place
    <br>Prévoir une pièce d’identité",
    coach:         "Catherine",
    street:        "Rue Saint-Martin 9",
    npa:           "1003",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          100,
    duration:      45,
    credits_cost:  3,
  )
  course_fourteen.remote_photo_url = url_fourteen
  course_fourteen.save!

  url_fifteen = "https://www.so-peps.com/wp-content/uploads/2016/03/il-metodo-pilates-1064405_w767h767c1cx511cy250.jpg?w=640"
  course_fifteen = Course.new(
    name:          "Pilates",
    studio:        "Yama Coaching & Pilates",
    category:      "Souplesse",
    description:   "Pour un corps tonique et un mental au top !

Créé par Joseph Pilates, et désormais méthode fitness favorite des stars, le Pilate est une activité parfaite pour tous ceux et celles qui souhaitent équilibrer leur corps et le renforcer harmonieusement tout en se recentrant.

Dans les cours, où l'on enchaîne une série de mouvements réfléchis, l'accent est mis sur la respiration, le contrôle et la fluidité. De quoi se dessiner une silhouette tonique et améliorer son bien-être au quotidien!",
    infos:         "Prévoir une serviette pour les machines",
    coach:         "Thierry",
    street:        "Rue Neuve 2",
    npa:           "1003",
    city:          "Lausanne",
    likes:         rand(50..350),
    kcal:          380,
    duration:      55,
    credits_cost:  5,
  )
  course_fifteen.remote_photo_url = url_fifteen
  course_fifteen.save!


puts 'Creating activities...'

a = Course.first.id
b = Course.last.id
array = (a..b).to_a
samplea = array.sample
array = array - [samplea]
sampleb = array.sample
array = array - [sampleb]
samplec = array.sample
array = array - [samplec]
sampled = array.sample
array = array - [sampled]
samplef = array.sample
array = array - [samplef]
sampleg = array.sample
array = array - [sampleg]
sampleh = array.sample
array = array - [sampleh]
samplei = array.sample
array = array - [samplei]
samplej = array.sample
array = array - [samplej]
samplek = array.sample
array = array - [samplek]
samplel = array.sample
array = array - [samplel]
samplem = array.sample
array = array - [samplem]
samplen = array.sample
array = array - [samplen]
sampleo = array.sample
array = array - [sampleo]
samplep = array.sample


crossfit = Course.find_by(name: "CrossFit")
spinning = Course.find_by(name: "Spinning")
aquabike = Course.find_by(name: "Aquabike")
body_combat = Course.find_by(name: "Body Combat")
hatha_yoga = Course.find_by(name: "Hatha Yoga")
boxe_anglaise = Course.find_by(name: "Boxe anglaise")
spinning = Course.find_by(name: "Spinning")
pole_dance = Course.find_by(name: "Pole Dance")
grit_training = Course.find_by(name: "Grit Training")
tai_chi = Course.find_by(name: "Taï-Chi")
body_pump = Course.find_by(name: "Body Pump")
cxworx = Course.find_by(name: "CXWORX")
stretching = Course.find_by(name: "Stretching")
pilates = Course.find_by(name: "Pilates")
hiphop = Course.find_by(name: "Hip-Hop")
kickboxing = Course.find_by(name: "Kick Boxing")

  Activity.create!(
    start_time: DateTime.new(2019,3,18,17),
    course: hatha_yoga,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,20),
    course: crossfit,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,18),
    course: kickboxing,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,18),
    course: boxe_anglaise,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,18.5),
    course: body_combat,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,19.5),
    course: pole_dance,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,19.5),
    course: stretching,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,19),
    course:  body_pump,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,19),
    course: cxworx,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,17.5),
    course: aquabike,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,20),
    course: grit_training,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,20),
    course: pilates,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,18,20),
    course: hiphop,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,17),
    course: tai_chi,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,17.5),
    course: boxe_anglaise,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,18),
    course: body_combat,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,18),
    course: spinning,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,18.5),
    course: hatha_yoga,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,18.5),
    course: cxworx,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,19.5),
    course: stretching,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,19.5),
    course: kickboxing,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,19),
    course: pole_dance,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,20),
    course: grit_training,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,19,20),
    course: pilates,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,17),
    course: stretching,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,17.5),
    course: kickboxing,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,18),
    course: hatha_yoga,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,18),
    course: cxworx,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,18.5),
    course: boxe_anglaise,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,18.5),
    course: grit_training,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,19.5),
    course: tai_chi,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,19.5),
    course: aquabike,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,19),
    course:  body_combat,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,19),
    course: spinning,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,20),
    course: pilates,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,20),
    course: pole_dance,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,20,20),
    course: crossfit,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,17),
    course: crossfit,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,17.5),
    course: grit_training,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,18),
    course: body_pump,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,18),
    course: tai_chi,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,18.5),
    course: boxe_anglaise,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,18.5),
    course: body_combat,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,19.5),
    course: spinning,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,19.5),
    course: stretching,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,19),
    course:  cxworx,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,19),
    course: hatha_yoga,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,20),
    course: kickboxing,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,20),
    course: pilates,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,20),
    course: pole_dance,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,21,20),
    course: aquabike,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,17),
    course: aquabike,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,17.5),
    course: pole_dance,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,18),
    course: pilates,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,18),
    course: kickboxing,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,18.5),
    course: hatha_yoga,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,18.5),
    course: cxworx,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,19.5),
    course: stretching,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,19.5),
    course: spinning,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,19),
    course: boxe_anglaise,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,19),
    course: tai_chi,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,20),
    course: body_pump,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,20),
    course: crossfit,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,20),
    course: grit_training,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,22,20),
    course: body_combat,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,17),
    course: crossfit,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,17.5),
    course: grit_training,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,18),
    course: body_pump,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,18),
    course: tai_chi,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,18.5),
    course: boxe_anglaise,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,18.5),
    course: body_combat,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,19.5),
    course: spinning,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,19.5),
    course: stretching,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,19),
    course: cxworx,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,19),
    course: hatha_yoga,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,20),
    course: kickboxing,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,20),
    course: pilates,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,20),
    course: pole_dance,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,23,20),
    course: aquabike,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,17),
    course: body_combat,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,17.5),
    course: tai_chi,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,18),
    course: crossfit,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,18),
    course: aquabike,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,18.5),
    course: kickboxing,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,18.5),
    course: hatha_yoga,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,19.5),
    course: grit_training,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,19.5),
    course: pole_dance,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,19),
    course: stretching,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,19),
    course: body_pump,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,20),
    course: pilates,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,20),
    course: spinning,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,20),
    course: cxworx,
  )

  Activity.create!(
    start_time: DateTime.new(2019,3,24,20),
    course: boxe_anglaise,
  )

  actone = Activity.create!(
    start_time: DateTime.new(2019,3,1,20),
    course: (Course.all.sample),
  )

  acttwo = Activity.create!(
    start_time: DateTime.new(2019,3,3,20),
    course: (Course.all.sample),
  )

  actthree = Activity.create!(
    start_time: DateTime.new(2019,3,5,20),
    course: (Course.all.sample),
  )

  actfour = Activity.create!(
    start_time: DateTime.new(2019,3,6,20),
    course: (Course.all.sample),
  )

  Activity.create!(
    start_time: DateTime.new(2019,2,28,20),
    course: (Course.all.sample),
  )

puts 'Creating past bookings...'

  Booking.create!(
    user: User.last,
    activity: Activity.last,
  )

  Booking.create!(
    user: User.last,
    activity: actone,
  )

  Booking.create!(
    user: User.last,
    activity: acttwo,
  )

  Booking.create!(
    user: User.last,
    activity: actthree,
  )

  Booking.create!(
    user: User.last,
    activity: actfour,
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
