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

ablurb = "If this is in production, update it"
ds = [DogStatus.new(status: 0, guidelines: "If this is in production, update it")]

Location.create(name: "Allans Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(-45.8464573 170.6609251)",
                image: open("./db/images/allans.jpg", "r"),
                active: true,
                dog_statuses: ds)
Location.create(name: "Brighton Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(-45.9468324 170.335150099)",
                image: open("./db/images/brighton.jpg", "r"),
                active: true,
                dog_statuses: ds)
Location.create(name: "Doctors Point",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(-45.8464573 170.6609251)",
                image: open("./db/images/doctors.jpg", "r"),
                active: true,
                dog_statuses: ds)
Location.create(name: "Long Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(-46.6333333 169.26666669)",
                image: open("./db/images/long.jpg", "r"),
                active: true,
                dog_statuses: ds)
Location.create(name: "St Clair Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(-45.9092631, 170.4885635)",
                image: open("./db/images/stclair.jpg", "r"),
                active: true,
                dog_statuses: ds)
Location.create(name: "St Kilda Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(-45.901957, 170.5056987)",
                image: open("./db/images/stkilda.jpg", "r"),
                active: true,
                dog_statuses: ds)
Location.create(name: "Tomahawk Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(-45.9064872 170.5397840)",
                image: open("./db/images/tomahawk.jpg", "r"),
                active: true,
                dog_statuses: ds)
Location.create(name: "Tunnel Beach",
                category: 0,
                region: 1,
                animal_blurb: ablurb,
                geolocation: "POINT(-45.92077530, 170.45918719)",
                image: open("./db/images/tunnel.jpg", "r"),
                active: true,
                dog_statuses: ds)
