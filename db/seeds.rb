# Basic seeds
# Dog Status Values:
# 0: Off lead
# 1: On lead
# 2: No dogs
#
# Region values:
# 0: Southland
# 1: Otago
# 2: Canterbury
# 3: Westland
# 4: Marlborough
# 5: Nelson
# 6: Wellington
# 7: Hawke's Bay
# 8: New Plymouth
# 9: Auckland
#
# Geolocation Points are Longitude/Latitude

ablurb = "If this is in production, update it"

Location.create(name: "Allans Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.701127 -45.874149)",
                image: open("./db/images/allans.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Aramoana Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.702459 -45.773779)",
                image: open("./db/images/aramoana.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Blueskin Bay",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.597005 -45.718925)",
                image: open("./db/images/blueskin.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 2, guidelines: "If this is in production, update it")])
Location.create(name: "Brighton Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.333739 -45.946054)",
                image: open("./db/images/brighton.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Broadbay Beach Reserve",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.624084 -45.846642)",
                image: open("./db/images/broadbay.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 2, guidelines: "If this is in production, update it")])
Location.create(name: "Careys Bay",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.624986 -45.809614)",
                image: open("./db/images/careys.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Doctors Point",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.597071 -45.735774)",
                image: open("./db/images/doctors.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Long Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.642690 -45.755437)",
                image: open("./db/images/long.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Matapoutahi Pa Site",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.599239 -45.733484)",
                image: open("./db/images/matapoutahi.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 1, guidelines: "If this is in production, update it")])
Location.create(name: "Ocean View",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.356697 -45.937634)",
                image: open("./db/images/ocean.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 1, guidelines: "If this is in production, update it")])
Location.create(name: "Purakaunui Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.616375 -45.737170)",
                image: open("./db/images/purakaunui.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Sandfly Bay",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.639607 -45.893508)",
                image: open("./db/images/sandfly.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 2, guidelines: "If this is in production, update it")])				
Location.create(name: "St Clair Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.489161 -45.912315)",
                image: open("./db/images/stclair.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 1, guidelines: "If this is in production, update it")])
Location.create(name: "St Kilda Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.517679 -45.907732)",
                image: open("./db/images/stkilda.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "The Mole",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.719656 -45.770613)",
                image: open("./db/images/mole.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Tomahawk Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.540560 -45.904944)",
                image: open("./db/images/tomahawk.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Tunnel Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.453202 -45.918515)",
                image: open("./db/images/tunnel.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 1, guidelines: "If this is in production, update it")])
Location.create(name: "Victory Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.697889 -45.838211)",
                image: open("./db/images/victory.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])
Location.create(name: "Waldronville Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.396004 -45.927715)",
                image: open("./db/images/waldronville.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 1, guidelines: "If this is in production, update it")])
Location.create(name: "Warrington Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(170.596910 -45.714917)",
                image: open("./db/images/warrington.jpg", "r"),
                active: true,
                dog_statuses: [DogStatus.new(status: 0, guidelines: "If this is in production, update it")])

Animal.create(name: "Sea Lion", 
              blurb: "The New Zealand sea lion has a blunt nose and short whiskers. Mature males are brown to black in colour with well-developed manes reaching to the shoulders. Females are lighter in colour, predominantly creamy grey with darker pigmentation around their flippers.",
              guidelines: "Some guidelines", 
              ext_url: "http://www.doc.govt.nz/nature/native-animals/marine-mammals/seals/new-zealand-sea-lion/",
              image: open("./db/sealion.jpg", "r"))

Animal.create(name: "Fur Seal",
              blurb: "Fur Seals and sea lions are distinguished from other seals by their external ear flaps and hind flippers which rotate forward, allowing them to move quickly on land. This pointy-nosed seal has long pale whiskers and a body covered with two layers of fur. Their coat is dark grey-brown on the back, and lighter below; when wet kekeno look almost black. In some animals the longer upper hairs have white tips which give the animal a silvery appearance",
              guidelines: "Some guidelines",
              ext_url: "http://www.doc.govt.nz/nature/native-animals/marine-mammals/seals/nz-fur-seal/",
              image: open("./db/furseal.jpg"))

Animal.create(name: "Leopard Seal",
              blurb: "The leopard seal (Hydrurga leptonyx) is built for speed. They are easily identified by their long slim body, comparatively large fore-flippers. The disproportionately large head, massive jaws, impressive teeth and tremendous gape give it a snake-like appearance.",
              guidelines: "Some guidelines",
              ext_url: "http://www.doc.govt.nz/nature/native-animals/marine-mammals/seals/leopard-seal/",
              image: open("./db/leopardseal.jpg"))

Animal.create(name: "Yellow-Eyed Penguin",
              blurb: "The yellow-eyed penguin is named for its yellow iris and distinctive yellow headband. Adults are grey-blue in colour, with a snow-white belly and pink feet.",
              guidelines: "Some guidelines",
              ext_url: "http://www.doc.govt.nz/nature/native-animals/birds/birds-a-z/penguins/yellow-eyed-penguin-hoiho/",
              image: open("./db/yelloweyed.jpg"))
