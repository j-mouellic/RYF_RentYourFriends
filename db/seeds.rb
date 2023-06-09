
# Créer 2 users

Review.destroy_all
Booking.destroy_all
Friend.destroy_all
User.destroy_all

jean = User.new(
  pseudo: "JB",
  first_name: "Jean",
  last_name: "Bombeur",
  email: "BriocheDoree@beurre.com",
  password: "sandwichTriangle",
)

edgard = User.new(
  pseudo: "EA",
  first_name: "Edgard",
  last_name: "Avou",
  email: "milouf@army.com",
  password: "têtedechat",
)

jean.save!
edgard.save!

# Créer 10 friends
friends = [
  {
    name: "bob",
    date_of_birth: "19/04/1989",
    price: 301,
    genre: "Homme",
    address: "4 Av. Edgar Degas 56000 Vannes",
    activity_wedding: true,
    activity_sam: false,
    activity_diner: false,
    activity_birthday: false,
    activity_bowling: false,
    activity_hike: false,
    activity_movie: false,
    activity_picnic: true,
    activity_concert: true,
    activity_karaoke: true,
    activity_shopping: false,
    activity_sport: true,
    activity_barbecue: true,
    activity_camping: true,
    activity_paintball: true,
    default_complotist: true,
    default_impatient: true,
    default_disorganized: false,
    default_cheap: false,
    default_arrogant: true,
    quality_funny: true,
    quality_reliable: false,
    quality_honest: false,
    quality_good_looking: false,
    quality_brave: false,
    picture: "https://randomuser.me/api/portraits/men/25.jpg",
    description: "Je loue Bob car il dévalise mon frigo depuis plus de 2 ans. Évitez le restaurant avec lui et les apéros car il devient
    complotiste après 3 verres. Bob sera parfait dans vos moments de déprimes pour vous faire rire !"
  },
  {
    name: "marie",
    date_of_birth: "20/04/1989",
    price: 448,
    genre: "Femme",
    address: "81 Av. de la Marne 56000 Vannes",
    activity_wedding: false,
    activity_sam: false,
    activity_diner: false,
    activity_birthday: false,
    activity_bowling: true,
    activity_hike: false,
    activity_movie: false,
    activity_picnic: true,
    activity_concert: false,
    activity_karaoke: true,
    activity_shopping: false,
    activity_sport: true,
    activity_barbecue: false,
    activity_camping: false,
    activity_paintball: true,
    default_complotist: true,
    default_impatient: false,
    default_disorganized: false,
    default_cheap: false,
    default_arrogant: false,
    quality_funny: true,
    quality_reliable: true,
    quality_honest: false,
    quality_good_looking: true,
    quality_brave: true,
    picture: "https://randomuser.me/api/portraits/women/67.jpg",
    description: "Que dire de Marie si ce n'est qu'elle est un véritable rayon de soleil ? Attention aux yeux, Marie maîtrise
    les pas de danse les plus spectaculaires : chachacha, madison, moonwalk, macarena... Rien ne lui résiste ! Que ça soit pour un mariage,
    un dîner, un anniversaire ou même au bowling, elle ne peut s'empêcher de lancer une petite chenille. Prévoyez une journée de repos
    suite à sa prestation."
  },
  {
    name: "myriam",
    date_of_birth: "21/04/1989",
    price: 985,
    genre: "Femme",
    address: "3 Imp. Philippe Lebon, 56000 Vannes",
    activity_wedding: true,
    activity_sam: true,
    activity_diner: true,
    activity_birthday: false,
    activity_bowling: true,
    activity_hike: false,
    activity_movie: true,
    activity_picnic: true,
    activity_concert: true,
    activity_karaoke: false,
    activity_shopping: true,
    activity_sport: true,
    activity_barbecue: false,
    activity_camping: false,
    activity_paintball: false,
    default_complotist: true,
    default_impatient: true,
    default_disorganized: false,
    default_cheap: false,
    default_arrogant: true,
    quality_funny: false,
    quality_reliable: true,
    quality_honest: true,
    quality_good_looking: true,
    quality_brave: false,
    picture: "https://randomuser.me/api/portraits/women/31.jpg",
    description: "Myriam n’est pas avare de bonnes blagues qui sauront impressionner vos convives.
    Véritable couteau suisse belge, elle saura embellir vos moments de vie.
    Gourmande par nature, prévoyez de quoi la sustanter. A défaut, son impatience couplée à ses élans de folie dévastateurs pourront quelque peu gâcher votre activité."
  },
  {
    name: "Ginette",
    date_of_birth: "22/04/1989",
    price: 273,
    genre: "Femme",
    address: "12 Rue de la Brise, 56000 Vannes",
    activity_wedding: true,
    activity_sam: false,
    activity_diner: false,
    activity_birthday: true,
    activity_bowling: false,
    activity_hike: true,
    activity_movie: false,
    activity_picnic: false,
    activity_concert: false,
    activity_karaoke: false,
    activity_shopping: false,
    activity_sport: false,
    activity_barbecue: false,
    activity_camping: true,
    activity_paintball: true,
    default_complotist: true,
    default_impatient: true,
    default_disorganized: false,
    default_cheap: true,
    default_arrogant: false,
    quality_funny: false,
    quality_reliable: false,
    quality_honest: false,
    quality_good_looking: true,
    quality_brave: false,
    picture: "https://randomuser.me/api/portraits/women/22.jpg",
    description: "L’on dit d’elle qu’elle se distingue par sa bonhommie et sa rapidité à se mettre à table. Son arrière grand-père contait qu’un repas sans fromage n’est pas un repas digne de ce nom. Véritable moulin à paroles, Ginette ne mâche pas ses mots et est parfaitement adaptée à des activités sportives ou bien évidemment culinaires."
  },
  {
    name: "Bernard",
    date_of_birth: "23/04/1989",
    price: 319,
    genre: "Homme",
    address: "19 Rue du Général Baron Fabre, 56000 Vannes",
    activity_wedding: false,
    activity_sam: false,
    activity_diner: false,
    activity_birthday: false,
    activity_bowling: true,
    activity_hike: false,
    activity_movie: false,
    activity_picnic: false,
    activity_concert: true,
    activity_karaoke: true,
    activity_shopping: false,
    activity_sport: true,
    activity_barbecue: false,
    activity_camping: true,
    activity_paintball: true,
    default_complotist: true,
    default_impatient: true,
    default_disorganized: true,
    default_cheap: false,
    default_arrogant: true,
    quality_funny: true,
    quality_reliable: true,
    quality_honest: true,
    quality_good_looking: false,
    quality_brave: true,
    picture: "https://randomuser.me/api/portraits/men/72.jpg",
    description: "Bernard, Bernard, Bernard… « Le clown de Bretagne » comme ses amis du PMU l’aime l’appeler. Il aime pousser la chansonnette, surtout lorsque l’Envie de Johnny vient titiller ses tympans. Très actif, Bernard pratique depuis des décennies la pétanque bretonne. N’ayant pas sa langue dans sa poche, il saura lancer et animer des débats houleux. Repas en famille à prescrire."
  },
  {
    name: "Luc",
    date_of_birth: "24/04/1989",
    price: 790,
    genre: "Homme",
    address: "35 Av. Clément Ader, 06100 Nice",
    activity_wedding: false,
    activity_sam: true,
    activity_diner: false,
    activity_birthday: true,
    activity_bowling: false,
    activity_hike: false,
    activity_movie: true,
    activity_picnic: true,
    activity_concert: true,
    activity_karaoke: true,
    activity_shopping: true,
    activity_sport: false,
    activity_barbecue: false,
    activity_camping: true,
    activity_paintball: false,
    default_complotist: true,
    default_impatient: true,
    default_disorganized: false,
    default_cheap: true,
    default_arrogant: true,
    quality_funny: false,
    quality_reliable: true,
    quality_honest: true,
    quality_good_looking: false,
    quality_brave: false,
    picture: "https://randomuser.me/api/portraits/men/80.jpg",
    description: "Luc est aussi proche de ses amis que de ses sous. C’est mon meilleur ami. Ne comptez pas sur lui pour apporter de quoi vous régaler au picnic, il vous apportera néanmoins une bonne dose de vitalité et une joie de vivre à toute épreuve. Attention avant de faire du shopping, il oublie souvent son porte-monnaie...
    "
  },
  {
    name: "Johnny Boy",
    date_of_birth: "25/04/1989",
    price: 151,
    genre: "Homme",
    address: "241 Av. de Pessicart, 06100 Nice",
    activity_wedding: false,
    activity_sam: false,
    activity_diner: true,
    activity_birthday: true,
    activity_bowling: true,
    activity_hike: false,
    activity_movie: true,
    activity_picnic: false,
    activity_concert: true,
    activity_karaoke: true,
    activity_shopping: false,
    activity_sport: false,
    activity_barbecue: true,
    activity_camping: false,
    activity_paintball: false,
    default_complotist: true,
    default_impatient: true,
    default_disorganized: false,
    default_cheap: true,
    default_arrogant: false,
    quality_funny: true,
    quality_reliable: false,
    quality_honest: true,
    quality_good_looking: false,
    quality_brave: true,
    picture: "https://randomuser.me/api/portraits/men/90.jpg",
    description: "Johnny Boy est un très bon rapport qualité/prix pour toutes vos activités d’intérieur. Si vous souhaitez passer une soirée endiablée autour d’un karaoké ou autour d’un bon feu de cheminée à jouer aux jeux de société, Johnny est l’Homme de la situation. De très (trop) bonne compagnie, ne l’installez pas à côté de votre bien-aimée. A bon entendeur..."
  },
  {
    name: "Lily",
    date_of_birth: "26/04/1989",
    price: 784,
    genre: "Femme",
    address: "80 Av. de Brancolar, 06000 Nice",
    activity_wedding: false,
    activity_sam: false,
    activity_diner: true,
    activity_birthday: false,
    activity_bowling: false,
    activity_hike: true,
    activity_movie: false,
    activity_picnic: false,
    activity_concert: false,
    activity_karaoke: true,
    activity_shopping: false,
    activity_sport: false,
    activity_barbecue: true,
    activity_camping: true,
    activity_paintball: false,
    default_complotist: true,
    default_impatient: true,
    default_disorganized: false,
    default_cheap: false,
    default_arrogant: false,
    quality_funny: false,
    quality_reliable: true,
    quality_honest: true,
    quality_good_looking: true,
    quality_brave: true,
    picture: "https://randomuser.me/api/portraits/women/23.jpg",
    description: "Je connais Lily depuis 15 ans et j’ai rarement connu une personne aussi conviviale et chaleureuse. Nul ne peut oublier les barbecues passés en sa compagnie. C'est une grande amatrice de la théorie du complot et elle ne manquera pas de partager les actualités du sujet."
  },
  {
    name: "Marshall",
    date_of_birth: "27/04/1989",
    price: 854,
    genre: "Homme",
    address: "71 Av. Joseph Durandy, 06200 Nice",
    activity_wedding: false,
    activity_sam: false,
    activity_diner: false,
    activity_birthday: true,
    activity_bowling: false,
    activity_hike: false,
    activity_movie: true,
    activity_picnic: false,
    activity_concert: false,
    activity_karaoke: true,
    activity_shopping: true,
    activity_sport: true,
    activity_barbecue: false,
    activity_camping: true,
    activity_paintball: true,
    default_complotist: false,
    default_impatient: false,
    default_disorganized: true,
    default_cheap: false,
    default_arrogant: false,
    quality_funny: true,
    quality_reliable: false,
    quality_honest: false,
    quality_good_looking: false,
    quality_brave: false,
    picture: "https://randomuser.me/api/portraits/men/29.jpg",
    description: "Marshall peut être comparé à un Teddy Bear: doux, gentil et réconfortant. C’est le compagnon idéal pour vos soirées film, confortablement installés dans votre canapé. Rigolo, il reste néanmoins très désorganisé et il faudra lui rappeler la fin du rendez-vous pour qu’il parte, au risque qu’il s’installe dans votre salon."
  },
  {
    name: "Barney",
    date_of_birth: "28/04/1989",
    price: 238,
    genre: "Homme",
    address: "53-59 Prom. des Anglais, 06000 Nice",
    activity_wedding: true,
    activity_sam: true,
    activity_diner: false,
    activity_birthday: true,
    activity_bowling: false,
    activity_hike: true,
    activity_movie: true,
    activity_picnic: true,
    activity_concert: true,
    activity_karaoke: true,
    activity_shopping: true,
    activity_sport: false,
    activity_barbecue: true,
    activity_camping: true,
    activity_paintball: true,
    default_complotist: true,
    default_impatient: true,
    default_disorganized: true,
    default_cheap: true,
    default_arrogant: true,
    quality_funny: true,
    quality_reliable: false,
    quality_honest: false,
    quality_good_looking: false,
    quality_brave: true,
    picture: "https://randomuser.me/api/portraits/men/45.jpg",
    description: "Barney, coquin malin, c’est LE copain qu’il vous faut pour ravir vos ami(e)s célibataires. Pour un prix raisonnable, il rendra vos anniversaire LÉ-GEN-DAI-RES, au bas mot. Créatif et audacieux, il saura vous surprendre à quelconque heure de la journée et de la nuit. N’attendez pas de lui qu’il débarasse la table."
  }
]

friends.each do |friend|
  seed = Friend.new(
    friend
  )
  file = URI.open(friend[:picture])
  seed.photo.attach(io: file, filename: "#{seed.name}.png", content_type: "image/png")
  seed.user = jean
  seed.save!
end

# Créer 1 bookings

booking = Booking.new(
  total_price: 100,
  status: "pending",
  start_date: "12/12/2023",
  end_date: "01/01/2024",
)

booking1 = Booking.new(
  total_price: 1235,
  status: "validated",
  start_date: "12/12/2023",
  end_date: "01/01/2024",
)

booking2 = Booking.new(
  total_price: 2236,
  status: "declined",
  start_date: "12/12/2023",
  end_date: "01/01/2024",
)

booking3 = Booking.new(
  total_price: 56,
  status: "finished",
  start_date: "01/03/2023",
  end_date: "02/03/2023",
)

booking.user = edgard
bob = Friend.first
booking.friend = bob
booking.save!

booking1.user = edgard
ginette = Friend.find_by_name("Ginette")
booking1.friend = ginette
booking1.save!

booking2.user = edgard
barney = Friend.find_by_name("Barney")
booking2.friend = barney
booking2.save!

booking3.user = edgard
bernard = Friend.find_by_name("Bernard")
booking3.friend = bernard
booking3.save!
