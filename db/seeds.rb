Report.delete_all
Animal.delete_all
DogStatus.delete_all
Location.delete_all

Animal.create(
              name: 'Yellow-Eyed Penguin', 
              blurb: 'Some blurb', 
              guidelines: 'Some guidelines',
              ext_url: 'wikipedia.org',
              image: open('https://upload.wikimedia.org/wikipedia/commons/4/4f/Yellow-eyed_Penguin_MC.jpg', "r"),
              target: true )

Animal.create(
              name: 'Blue Penguin', 
              blurb: 'Some blurb', 
              guidelines: 'Some guidelines',
              ext_url: 'wikipedia.org',
              image: open('https://upload.wikimedia.org/wikipedia/commons/3/38/Eudyptula_minor_Bruny_1.jpg', "r"),
              target: true )
        
Animal.create(
              name: 'Sea Lion', 
              blurb: 'Some blurb', 
              guidelines: 'Some guidelines',
              ext_url: 'wikipedia.org',
              image: open('https://upload.wikimedia.org/wikipedia/commons/b/b9/New_Zealand_Sea_Lion.jpg', "r"),
              target: true )

Location.create(
                name: 'St Claire', 
                category: 0,
                geolocation: 'POINT(170.490659 -45.911775)',
                animal_blurb: 'Although uncommon, you should pay specific attention to possible seals along the North Side',
                image: open('http://ih0.redbubble.net/image.3998569.1307/flat,550x550,075,f.jpg', "r"))

Location.create(
                name: 'St Kilda', 
                category: 0, 
                geolocation: 'POINT(170.516194 -45.908461)',
                animal_blurb: 'Although uncommon, you should pay specific attention to possible seals along the North Side',
                image: open('http://images.travelpod.com/tw_slides/ta00/cb6/fd0/st-kilda-beach-dunedin-christchurch.jpg', "r"))

Location.create(
                name: 'Allans Beach',
                category: 0,
                geolocation: 'POINT(170.701030 -45.875067)',
                animal_blurb: 'Although uncommon, you should pay specific attention to possible seals along the North Side',
                image: open('http://images.fineartamerica.com/images-medium-large/allans-beach--new-zealand-czrart.jpg', "r"))

Location.create(
                name: 'Brighton Beach',
                category: 0,
                geolocation: 'POINT(170.335150099 -45.9468324)',
                animal_blurb: 'Although uncommon, you should pay specific attention to possible seals along the North Side',
                image: open('http://www.wallyandbarbara.com/newzealand/images4/P1040906.JPG', "r"))

Location.create(
                name: 'Tunnel Beach',
                category: 0,
                geolocation: 'POINT(170.459245 -45.920753)',
                animal_blurb: 'Although uncommon, you should pay specific attention to possible seals along the North Side',
                image: open('http://www.chrisgin.com/images/seascapes/large/TunnelBeach_1095.jpg', "r"))

Report.create(location_id: 6, geolocation: 'POINT(170.489735 -45.912665)', blurb: "Spotted Yellow-Eyed Penguin playing in the surf",
             image: open('http://d1k2jfc4wnfimc.cloudfront.net/assets/matakohe/images/contentfill.jpg', "r"),
             image_file_name: 'penguin.jpg',created_at: DateTime.now, animal_id: 1)

Report.create(location_id: 6, geolocation: 'POINT(170.488179 -45.913587)', blurb: "Spotted Blue Penguin shore near Salt Water Pool",
             image: open('http://d1k2jfc4wnfimc.cloudfront.net/assets/matakohe/images/contentfill.jpg', "r"),
             image_file_name: 'penguin.jpg',created_at: DateTime.now, animal_id: 2)

Report.create(location_id: 7, geolocation: 'POINT(170.531367 -45.908496)', blurb: "Spotted Sea Lion near lookout, far North end of beach.",
             image: open('https://animalblawg.files.wordpress.com/2010/11/the-california-sea-lion.jpg', "r"),
             image_file_name: 'sealion.jpg',created_at: DateTime.now, animal_id: 3)
