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
              "Frankfurt, Germany"
            ]

e0 = [
      "Yoga for Beginners",

      "Yoga is an ancient healing wellness,assisted yoga postures, breathing and
      meditation to bring the body into a state of deep relaxation. Let's get
      start wit me!"
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
      Each person will have at least 12 professionally edited images."
    ]

e2 = [
        "Discover the city",

        "Let's discover histrical old city with me!",
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
      I'm happy to answer all your questions about the dogs and my activities."
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
        your family and friends, even if in different homes or countries!"
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
      "Pukhraj Durry Udhyog" from previous guests who already visited us in
      person and bought from us.
      Use it also as a gift, we will take care of everything.

      Book a private experience for your team. We have already hosted big
      groups of 50+ for Facebook, and they loved it and repeate"
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
      and they loved it and repeated!"
      ]

experiences = []

experiences << e1 << e2 << e3 << e4

experiences.each do |e|
  Experience.create!(
        title: e[0],
        description: e[1],
        location: locations.sample,
        duration: (rand(1..8)),
        price: (rand(32..121)),
        user_id: firstUser.id
    )
  puts "Creating experience: #{e[0]} "
end

puts "Finished!"
