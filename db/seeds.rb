require "open-uri"

puts "Cleaning database..."
Experience.destroy_all
User.destroy_all
puts 'database is clean'

firstUser = User.create!(
    email: "first@user.com",
    password: "123456"
  )

secondUser = User.create!(
    email: "second@user.com",
    password: "123456"
  )

locations = [
              "Berlin, Germany",
              "Munich, Germany",
              "Osaka, Japan",
              "Frankfurt, Germany",
              "Machu Picchu, Peru",
              "The Grand Canyon, Arizona",
              "Rome, Italy",
              "Maui, Hawaii",
              "Masai Mara, Kenya",
              "Montreal, Canada",
              "Rotorua, New Zealand",
              "Istanbul, Turkey",
              "Angkor Wat, Cambodia",
              "London, England",
              "Manhattan, New York",
              "Paris, France",
              "San Francisco, California",
              "Hong Kong",
              "Marrakesh, Morocco"
            ]

e0 = [
      "Yoga for beginners",

      "Yoga is an ancient healing wellness,assisted yoga postures, breathing and
      meditation to bring the body into a state of deep relaxation. Let's get
      start wit me!",

      "https://source.unsplash.com/t1NEMSm1rgI",
      "https://source.unsplash.com/nqUHQkuVj3c",
      "https://source.unsplash.com/wmZNEGkcsmw"
      ]

e1 = [
      "Photo session with an award-winning pro",

      "You'll take home retouched and personalized photos for yourself at
      beautiful places in Munich. A unique souvenir of your stay here.
      My Instagram is: jcflorez_photographer and munich_photosessions09
      This session is perfect for individuals, couples (engagement, Pre
      wedding, honey moon, surprise proposal), families, group of friends,
      fashion models, birthdays, bachelor farewells, business portraits.
      The session will be always private. Only with me and you, no other groups.
      We will go to famous and popular places in the city Center of Munich like
      the Nationaltheater area, Odeonsplatz, Siegestor, Englischer Garten, the
      Eisbach river and Monopteros.
      During my sessions one of my priorities is to make you feel comfortable,
      teach you how to pose and have fun together.
      In case of bad weather we can reschedule.
      Each person will have at least 12 professionally edited images.",

      "https://source.unsplash.com/DQPP9rVLYGQ",
      "https://source.unsplash.com/HHw9lc0ogIs",
      "https://source.unsplash.com/hty9mHHDTro"
    ]

e2 = [
        "Discover the city virtually",

        "My treasure hunt is a unique way of discovering the city. I will meet
        you at the start location. Here I will explain the game and tell you
        the story.
        I have developed a treasure hunt around the story of the Marines.
        Rotterdam was bombed in world war II and if you know where to look,
        you can still see the history in the streets. The objective of the
        treasure hunt is to find a secret location and along the way you will
        see some highlights of Rotterdam but also some places that only a local
        like me would know. All the locations and puzzles are linked to the
        story of the Marines. It is an exciting route with lots of beautiful
        places and challenging puzzles.
        At each location in the game, I will be present to tell you more about
        the city and the story and to hand over the next envelope. In these
        envelopes you can find the challenges, if you are smart enough to
        complete them all, you will be able to find the secret location! Not to
        worry, if you need help with the challenges, I will be there to give you
        some hints.",

        "https://source.unsplash.com/e9eYnKJJqng",
        "https://source.unsplash.com/pAqfQye5hlw",
        "https://source.unsplash.com/ze4v6O5toAE"
     ]

e3 = [
      "Take a walk with a great pack",

      "We will take a two-hour walk in the forest and on the lake with my nice pack.
      There are 8-14 great dogs from Berlin. The dogs are friendly, relaxed and all
      run freely without leash together with us through the forest.
      The walk is in Europe's largest dog leakage area! An unforgettable and
      close-up experience with a fantastic pack!

      The discovery should give you space to get into contact with nature, the
      forest and of course with the dogs. You can always ask questions and talk
      to me. But a discovery with more calm and less conversation is also
      possible. Whatever you prefer.

      Of course you can take souvenir photos from the walk.
      Please do not bring your own dog without prior arrangement.
      I'm happy to answer all your questions about the dogs and my activities.",

      "https://source.unsplash.com/sjYKio1FfZw",
      "https://source.unsplash.com/-JsZ6o5nIhs",
      "https://source.unsplash.com/Y6EIP03u_wY"

    ]

e4 = [
      "Sangria and Secrets with Drag Taste",

      "Welcome to the nº1 Online Experience in the World! Grab your favorite
      device, go to your Couch, or Kitchen, and get ready for the most amazing
      interactive Livestream ever created!

      We are @DragTaste and we're here to bring extra happiness and unique
      sangria to your Life :)

      This is so much more than a live cocktail class. Fabulous Drag Queens
      will teach you how to make the most authentic, fresh, and delicious
      Portuguese sangria, ALL from scratch, step by step!

      We will not only share this traditional secret recipe, but we’ll also
      be serving up our unique live performances on stage! It’ll be a
      cabaret-style digital cocktail class you’ll never forget.

      Get ready for fireworks, smoke effects, lights, and AMAZING costumes
      that we created, especially for you!

      It's time for you to Dance, Laugh, and Cheers. Embrace these times
      with positivity and relax with us!

      Once we finish the Sangria we’ll hang out, toast to life, talk about
      Lisbon, drag culture, answer your questions, and more! At the end of
      the experience, you’ll make friends from all over the world—without
      ever leaving your own house!

      This Experience is not only for someone alone at home, but also great
      for team-building to reconnect with your colleagues while working from
        home, for birthday parties, bachelorettes, and even to connect with
        your family and friends, even if in different homes or countries!",

        "https://source.unsplash.com/hW-RF8G94WY",
        "https://source.unsplash.com/2QvfyIkmMWE",
        "https://source.unsplash.com/1ZmB4XbSVRg"
      ]

e5 = [
      "Traditional Indian Rug Weaving Workshop",

      "We will meet virtually at our workshop in India, in a very unique and
      special place, where you will feel immersed and surrounded by nature.

      First, we will introduce you to the story of these beautiful rugs, about
      my family, village and the materials needed for their construction. You
      will learn about this old tradition, and how this rug is weaving
      traditionally father to son for humble people, to be one of the most
      trendy styles of house nowadays.

      NOTE-: If you book private session then bookers will get free handmade
      3'x5' rug for your home. You will choose colour and design we will take
      care of shipping as well.

      Then, If you are interested to get for your home, office or gift to your
      family or friends then every guest will choose the size, designs, the
      color and materials. Then you will make payment and once we receive
      payment via paypal then we make package.

      Finally, and very important, we will ship your creation to your home with
      free worldwide FedEx shipping. Your will get the rug at your home within
      7-10 working days.
      Check amazing reviews in Tripadvisor Under name of our Co-Oprative
      'Pukhraj Durry Udhyog' from previous guests who already visited us in
      person and bought from us.
      Use it also as a gift, we will take care of everything.

      Book a private experience for your team. We have already hosted big
      groups of 50+ for Facebook, and they loved it and repeate",

      "https://source.unsplash.com/2QE5yMcWrD4",
      "https://source.unsplash.com/wYvj3lrsLNc",
      "https://source.unsplash.com/JLY4Q9XYowA"

      ]

e6 = [
      "The Barcelona Espadrilles Workshop",

      "By far the best experience of all, as it includes a pair of shoes!
      Can’t beat that! Here you will design the espadrilles of your dreams,
      we will make them LIVE and then ship them to you, all included!

      We will meet virtually at our workshop in Barcelona, in a very unique and
      special place, where you will feel immersed and surrounded by espadrilles.

      First, we will introduce you to the story of these beautiful shoes and
      the materials needed for their construction. You will learn about this
      old tradition, and how this shoe passed from being built by and for
      humble people, to be one of the most trendy styles of shoes nowadays.

      Then, every guest will choose the size of the base, the color and
      materials, and the style of stitching. Once ready, we will stitch
      LIVE your own traditional espadrilles, following your instructions.
      Once finished, we will teach you the different ways to lace them up
      and use them.

      Finally, and very important, we will ship your creation to your home
      with free worldwide FedEx shipping. Your will get the pair at your
      home, all included, no extra cost!

      Check amazing designs from previous guests on Instagram @BarcelonaHandmade

      Use it also as a gift, we will take care of everything.

      Book a private experience for your team. We have already hosted big
      groups of 50+ for Facebook, Pinterest, Twitter, StitchFix, among others,
      and they loved it and repeated!",

      "https://source.unsplash.com/s2q1_cxLHSE",
      "https://source.unsplash.com/OrubLvISGZc",
      "https://source.unsplash.com/lsaXYTh_4gQ"
      ]

e7 = [
      "Traditional Babka & Kolaches from Grandma's Recipe",

      "Let's have fun & travel to Slovakia!
      (at least with our taste buds and the best traditional pastry :)

      During this online baking class, I'll teach you step-by-step how to make
      the most delicious traditional buns in Slovak called Koláče and a sweet
      braided bread called Babka from scratch

      I want this class to be as interactive as possible with YOU being able to
      bake, learn, and make the most of it. It is a relaxed, fun but educational
      class packed with plenty of tips on how to work properly with yeast-based
        doughs

      WHAT WE'LL DO:
      --> We'll start by explaining a bit about the ingredients with a focus on
      yeasts as there are certain rules to be followed anytime you're using them
      in baking
      --> We'll move on with preparing the dough, give it some time to rest and
      in the meantime, we'll work on fillings
      --> Lastly, we'll proceed with filling, shaping, baking, and of course,
      tasting :)

      PLUS: After the class, I'll send you three more traditional recipes that
      you can make with the very same dough. Yum :)

      This experience is GREAT FOR GROUPS and TEAM-BUILDINGS as well. Reconnect
      with your team, have fun and enjoy delicious pastries afterward​ - by today
      I had a chance to teach teams from companies like Grammarly, Google,
      Airbnb & many more",

      "https://source.unsplash.com/7Q7xoaw7MhQ",
      "https://source.unsplash.com/KgeRD0oK8o8",
      "https://source.unsplash.com/J9lVh479cKs"
      ]

e8 = [
      "Vinyl Master Virtual Tour",

      "Spend a day with your finger on the rhythmic pulse of Cuban music. We’ll
      meet at a home studio where you’ll take a front row seat to the modern
      music scene.

      Press play: To begin, learn about the complex history of music in Cuba
        through personal stories and music documentaries. You’ll even get a
        peek at some documentaries currently in production.

      Skip to the next song: Head to a fascinating record store set inside
      the home of a local music aficionado. Rummage through stacks of vintage
      records and purchase a rare vinyl to dance to back home.",

      "https://source.unsplash.com/B2fNlHHI7dI",
      "https://source.unsplash.com/T3mKJXfdims",
      "https://source.unsplash.com/3hWg9QKl5k8"
      ]

e9 = [
      "Meditation with a Japanese Buddhist Monk",

      "In this online experience, I start by sharing about my meditation
      practice. Next, we’ll do two types of meditation together.

      First is a chanting mantra for 20 minutes. This type of meditation allows
      you
      to go deep into your practice. Next we will do a 10-minute breathing-out
        meditation. Afterwards, you’ll share your questions and reflections on
        the practice.

      I am also happy to offer other meditations, such as meditation with a
      candle or
      mirror, Qigong, Sutra copying, and counting meditation, one of the basic
      Zen practices.
      Other things to note
      You need to download Zoom onto your phone or computer before the
      experience starts.",

      "https://source.unsplash.com/Yui5vfKHuzs",
      "https://source.unsplash.com/VsI_74zRzAo",
      "https://source.unsplash.com/Yui5vfKHuzs"
      ]

e10 = [
      ""
]

e11

e12

e13

e14

e15

e16

e17

experiences = []

experiences << e0 << e1 << e2 << e3 << e4 << e5 << e6 << e7  << e8 << e9

experiences.each do |e|
  file1 = URI.open(e[2])
  file2 = URI.open(e[3])
  file3 = URI.open(e[4])
  exp = Experience.new(
        title: e[0],
        description: e[1],
        location: locations.sample,
        duration: (rand(1..8)),
        price: (rand(32..121)),
        user_id: firstUser.id
    )
  exp.photos.attach(io: file1, filename: "#{(rand(1000000..1999999))}.png", content_type: 'image/png')
  exp.photos.attach(io: file2, filename: "#{(rand(1000000..1999))}.png", content_type: 'image/png')
  exp.photos.attach(io: file3, filename: "#{(rand(1000000..1999))}.png", content_type: 'image/png')
  exp.save
  puts "Creating experience: #{e[0]} "
end

puts "Finished!"
