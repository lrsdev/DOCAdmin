Animal.create(id: 1, name: 'Yellow-Eyed Penguin', blurb: 'Some blurb', ext_url: 'wikipedia.org',
             image: open('https://upload.wikimedia.org/wikipedia/commons/4/4f/Yellow-eyed_Penguin_MC.jpg', "r"),
             image_file_name: 'yelloweye.jpg')

Animal.create(id: 2, name: 'Blue Penguin', blurb: 'Some blurb', ext_url: 'wikipedia.org',
             image: open('https://upload.wikimedia.org/wikipedia/commons/3/38/Eudyptula_minor_Bruny_1.jpg', "r"),
             image_file_name: 'bluepenguin.jpg')
        
Animal.create(id: 3, name: 'Sea Lion', blurb: 'Some blurb', ext_url: 'wikipedia.org',
             image: open('https://upload.wikimedia.org/wikipedia/commons/b/b9/New_Zealand_Sea_Lion.jpg', "r"),
             image_file_name: 'sealion.jpg')

Location.create(id: 1, 
                name: 'St Claire', 
                category: 0,
                geolocation: 'POINT(170.490659 -45.911775)',
                image: open('http://ih0.redbubble.net/image.3998569.1307/flat,550x550,075,f.jpg', "r"))

DogStatus.create(id: 1,
                 location_id: 1,
                 status: 0,
                 guidelines: 'Dogs are not allowed on the beach from the Salt Water Pool to the nearest piles on the beach to the North.')

Location.create(id: 2,
                name: 'St Kilda', 
                category: 0, 
                geolocation: 'POINT(170.516194 -45.908461)',
                image: open('http://images.travelpod.com/tw_slides/ta00/cb6/fd0/st-kilda-beach-dunedin-christchurch.jpg', "r"))

DogStatus.create(id: 2,
                 location_id: 2,
                 status: 1,
                 guidelines: 'Dogs allowed off lead. Take care around rocks at the extreme North end of the beach, wildlife maye be present here.')

Location.create(id: 3,
                name: 'Allans Beach',
                category: 0,
                geolocation: 'POINT(170.701030 -45.875067)',
                image: open('http://images.fineartamerica.com/images-medium-large/allans-beach--new-zealand-czrart.jpg', "r"))

DogStatus.create(id: 3,
                 location_id: 3,
                 status: 2,
                 guidelines: 'Dogs allowed everywhere.')

Location.create(id: 4,
                name: 'Brighton Beach',
                category: 0,
                geolocation: 'POINT(170.335150099 -45.9468324)',
                image: open('http://www.wallyandbarbara.com/newzealand/images4/P1040906.JPG', "r"))

DogStatus.create(id: 4,
                 location_id: 4,
                 status: 1,
                 guidelines: 'Dogs not allowed within the bay from the Big Rock to the small cliff at the North end of the domain including the estuary and all of the beach within the confines of Brighton Road. Dogs allowed off lead elsewhere.')


Location.create(id: 5,
                name: 'Tunnel Beach',
                category: 0,
                geolocation: 'POINT(170.459245 -45.920753)',
                image: open('http://www.chrisgin.com/images/seascapes/large/TunnelBeach_1095.jpg', "r"))

DogStatus.create(id: 5,
                 location_id: 5,
                 status: 0,
                 guidelines: 'Dogs allowed on a leash.')

Report.create(location_id: 1, geolocation: 'POINT(170.489735 -45.912665)', blurb: "Spotted Yellow-Eyed Penguin playing in the surf",
             image: open('http://d1k2jfc4wnfimc.cloudfront.net/assets/matakohe/images/contentfill.jpg', "r"),
             image_file_name: 'penguin.jpg',created_at: DateTime.now, animal_id: 1)

Report.create(location_id: 1, geolocation: 'POINT(170.488179 -45.913587)', blurb: "Spotted Blue Penguin shore near Salt Water Pool",
             image: open('http://d1k2jfc4wnfimc.cloudfront.net/assets/matakohe/images/contentfill.jpg', "r"),
             image_file_name: 'penguin.jpg',created_at: DateTime.now, animal_id: 2)

Report.create(location_id: 2, geolocation: 'POINT(170.531367 -45.908496)', blurb: "Spotted Sea Lion near lookout, far North end of beach.",
             image: open('https://animalblawg.files.wordpress.com/2010/11/the-california-sea-lion.jpg', "r"),
             image_file_name: 'sealion.jpg',created_at: DateTime.now, animal_id: 3)


AnimalLocation.create(animal_id: 1, location_id: 1)
AnimalLocation.create(animal_id: 2, location_id: 1)
AnimalLocation.create(animal_id: 3, location_id: 2)
