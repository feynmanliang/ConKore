# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
  { 
    provider: "facebook",
    uid: "644816025",
    name: "Feynman Liang",
    email: "feynman.liang@gmail.com",
    profile_image: "https://sphotos-a.xx.fbcdn.net/hphotos-ash4/418689_10151061229281026_1274063087_n.jpg",
    biography: "Founded a student-owned business providing summer and abroad
    storage. Integrated PayPal IPN to www.mastorage.com, oversaw company budget
    and spending, provided customer support and invoicing, maintained customer
    database, migrated operations to Google Apps",
      board: "Trickwood",
      trucks: "Independent",
      bearings: "Bones Swiss",
      wheels: "Spitfire"
  },
  {
    name: "Tony Hawk", 
    email: "tony.hawk@proskate.com", 
    provider: "facebook", 
    uid: "644816025", 
    profile_image: "http://siriusbuzz.com/wp-content/uploads/2012/09/Tony-Hawk.jpg", 
    biography: "Anthony Frank \"Tony\" Hawk (born May 12, 1968), nicknamed \"The
   Birdman\", is an American professional skateboarder and actor. Hawk is well
   known for completing the first documented 900 (900 degree aerial spin) and
   his licensed video game titles, distributed by Activision.[1] He is widely
   considered to be one of the most successful and influential pioneers of
   modern vertical skateboarding.[2]\r\n",
   board: "Element", 
   trucks: "Crux", 
   bearings: "Bones Reds", 
   wheels: "Spitfire"
  },
  {
    name: "Eduardo Salinas", 
    email: "eduardo.salinas@microsoft.com", 
    provider: "facebook", 
    uid: "644816025", 
    profile_image: "https://sphotos-a.xx.fbcdn.net/hphotos-snc7/324451_10151175806760177_1055718218_o.jpg",
    board: "Element", 
    trucks: "Crux", 
    bearings: "Bones Reds", 
    wheels: "Spitfire",
    biography: "Anthony Frank \"Tony\" Hawk (born May 12, 1968), nicknamed \"The
   Birdman\", is an American professional skateboarder and actor. Hawk is well
   known for completing the first documented 900 (900 degree aerial spin) and
   his licensed video game titles, distributed by Activision.[1] He is widely
   considered to be one of the most successful and influential pioneers of
   modern vertical skateboarding.[2]\r\n",
   board: "Element", 
   trucks: "Crux", 
   bearings: "Bones Reds", 
   wheels: "Spitfire"
  },
  {
    name: "Stephanie Northway", 
    email: "stephanie.northway@olin.edu", 
    provider: "facebook", 
    uid: "644816025", 
    profile_image: "https://sphotos-a.xx.fbcdn.net/hphotos-snc7/324451_10151175806760177_1055718218_o.jpg",
    board: "Element", 
    trucks: "Crux", 
    bearings: "Bones Reds", 
    wheels: "Spitfire",
    biography: "Anthony Frank \"Tony\" Hawk (born May 12, 1968), nicknamed \"The
   Birdman\", is an American professional skateboarder and actor. Hawk is well
   known for completing the first documented 900 (900 degree aerial spin) and
   his licensed video game titles, distributed by Activision.[1] He is widely
   considered to be one of the most successful and influential pioneers of
   modern vertical skateboarding.[2]\r\n",
   board: "Element", 
   trucks: "Crux", 
   bearings: "Bones Reds", 
   wheels: "Spitfire"
  }
])

locations = Location.create([
  {
    title: "NERD Center Front Rail", 
    description: "While Windows Azure may be missing Rails support, the Microsoft NERD center certainly has no shortage of rails to shred", 
    lat: 42.63974653, 
    long: -71.10643291,
    image_url: "http://lizaadams.files.wordpress.com/2010/06/microsoft_nerd_center.jpg"
  },
  {
    title: "Umass Lowell 5-Stair", 
    description: "A nasty five stair with grindable iron handrails on both sides",
    lat: 42.59932419,
    long: -71.30144023, 
    image_url: "http://www.toxel.com/wp-content/uploads/2009/12/stairs03.jpg"
  },
  {
    title: "Leaning Tower Ledge",
    lat: 42.01997132867694,
    long: 12.548664325000004,
    image_url: "http://lizaadams.files.wordpress.com/2010/06/microsoft_nerd_center.jpg"
  },
  {
    title: "Barrier Reef Gap",
    lat: -24.90127901278178,
    long: 133.58012867578122,
    image_url: "http://www.toxel.com/wp-content/uploads/2009/12/stairs03.jpg"
  },
  {
    title: "Andover Wall-Ride",
    lat: 42.53054600185332,
    long: -71.43052958984373,
    image_url: "http://www.toxel.com/wp-content/uploads/2009/12/stairs03.jpg"
  },
  {
    title: "Burbanks Elementary Stairset",
    lat: 42.3582688437186,
    long: -71.5554990722656,
    image_url: "http://www.toxel.com/wp-content/uploads/2009/12/stairs03.jpg"
  }
])

tricks = Trick.create([
  {title: "50-50 Grind", 
   description: "Feynman shredding a 50-50 grind", 
   location_id: 1, 
   user_id: 1, 
   video_link: "http://www.youtube.com/watch?v=jP3Po0R0UCY"
  },
  {
    title: "BS Broadslide", 
    description: "Breaking in my new board", 
    location_id: 1, 
    user_id: 1, 
    video_link: "http://www.youtube.com/watch?v=gE61Oa308iQ"
  },
  {
    title: "360 Heelflip", 
    description: "My first flipping heelflip!!!", 
    location_id: 1, 
    user_id: 2, 
    video_link: "http://www.youtube.com/watch?v=jVfU1DY73Tk"
  },
  {
    title: "Kickflip to Manual", 
    location_id: 2, 
    user_id: 2, 
    video_link: "http://www.youtube.com/watch?v=4kdYsnCw6NY"
  },
  {
    title: "Shove-it to Nosegrind", 
    location_id: 3, 
    user_id: 3, 
    video_link: "http://www.youtube.com/watch?v=Z4qS_FZUFn4"
  },
  {
    title: "720 Aerial", 
    location_id: 1, 
    user_id: 4, 
    video_link: "http://www.youtube.com/watch?v=bGvT8I6P1G0"
  },
  {
    title: "Indy 900", 
    location_id: 4, 
    user_id: 2, 
    video_link: "http://www.youtube.com/watch?v=1xGwjBDfN-I"
  }
])

tricks.each do |trick|
  3.times do
    TrickComment.create({
      user_id: rand([1..(users.count)]),
      trick_id: trick.id,
      rating: rand([1..10]),
      body: "You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out."
    })
  end
end
