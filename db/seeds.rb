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
      "https://source.unsplash.com/N4DbvTUDikw"
      ]

e10 = [
      "Cello Meditation Concert",

      "*Great for virtual company events & groups of up to 100! Contact me for
      customisations (e.g. 30/45-minutes) or to request a time/date not listed.

      Prepare to center your mind and body with this online guided cello
      meditation hosted by The Wong Janice. We'll start with introductions and a
      cup of tea together to warm up the heart and the body. Next we'll focus on
      our breath and start to gain awareness of our bodies to relax, as you take
      your position on the floor to dive deeper into the meditation with
      beautiful live cello music.

      Through the combination of music and meditation, you may experience:
      - healing and deep relaxation
      - feeling more grounded and emotionally connected

      A little about the music: For each piece played, Janice will first play a
      low grounding tone and then play sweeping cello melodies on top. Each
      piece is based on a different emotion - some more uplifting, some more
      dark. There will be moments of silence in between the pieces to give you a
      chance to contemplate on the piece and focus again on your breath.

      We will end the concert with a few minutes of sharing in the group.

      To listen to the music ahead of the concert, search for Janice's latest
      album 'The Chakras: A Deep Cello Journey' on Spotify or iTunes.
      https://www.thewongjanice.com/listen

      Follow @thewongjanice on Instagram, Facebook and YouTube",

      "https://source.unsplash.com/eenKAWF2dw8",
      "https://source.unsplash.com/dc2AMLEx4rs",
      "https://source.unsplash.com/txJmSQY-06o"
]

e11 = [
        "Family Magic Show and Magic Lesson",

        "Self-Isolation and Social Distancing are in place everywhere around the
        world. Many people are worried about how they can spend a fun and
        meaningful time with their children, family, or friends.

        Employers around the world also constantly find ways to help their
        employees to stay connected, healthy and entertained.

        I created this “Interactive Virtual Magic Show & Lesson” for the above
        purposes.

        Preview Video: https://youtu.be/d6WCSEobrEg

        The human connection between you and me is what makes the magic happen
        in this experience, with only using everyday objects, without any
        special boxes or beautiful assistants. :-)

        Although this is conducted online via ZOOM, it is a highly interactive
        experience as all the participants will be actively involved in the
        show. This whole experience is enjoyable for both children and adults

        The show takes around 40-45 minutes, followed by a 15-20 minutes of
        magic lesson.

        With a little bit of practice, you will have some mind-blowing
        easy-to-master magic tricks to show your family and friends.

        If you scroll down to the Reviews section, you should be able to imagine
        better on what this experience is like.

        I support families with young children, please feel free to message me
        prior to your booking if you plan to attend this experience with your
        child/children and I will be happy to provide discount.

        This experience is great for special occasions such as :
        - Virtual Team Building/Corporate Events
        - Virtual Birthday Parties
        - Virtual Family Gatherings

        Please feel free to message me for any inquiry and I'll get back to you
        in a flash!",

        "https://source.unsplash.com/pxM_nRns2Zc",
        "https://source.unsplash.com/S0_Ep9meLFY",
        "https://source.unsplash.com/P787-xixGio"

      ]

e12 = [
        "Hidden Houseboat Concert",

        "Get ready to sing, dance, cheer and laugh your way through these times
        with music and positive vibes!

        We bring live music straight to your home from our magical houseboat
        studio in Amsterdam, situated in one of the most sustainable urban
        developments in all of Europe. During the concert we will also take you
        on a short tour of the terrain (it's one-of-a-kind!)

        Your experience begins with an introduction and performance of original
        music by your Amsterdam Music Project Host, followed by a special guest
        act. You're invited to sing, dance, clap along with us, or simply kick
        back on your couch and let the sounds and rhythms take you away. Stick
        around at the end of the performance to hang out with the musicians and
        like-minded people from all over the world, ask us any questions about
        our music or beloved city of Amsterdam.

        Are you a musician yourself? Please let us know!

        We also do private shows for special occasions, and can change the music
          to your liking. Perfect for:
        -> birthdays
        -> date nights
        -> anniversaries
        -> drinks with friends
        -> quarantine dance parties
        -> company/team building and 'outings'
        Other things to note
        Please download Zoom on desktop or mobile in advance (no account
        necessary). Please join the Zoom session 5-10 minutes before the start
        of the experience to ensure your video and sound are working properly.

        Laptop or TV is recommended so you can see everyone clearly :-)",

        "https://source.unsplash.com/VQgr9d1sUF8",
        "https://source.unsplash.com/WypHPk6lBFQ",
        "https://source.unsplash.com/x2lvPNSdw4U"
      ]

e13 = [
        "Follow a Plague Doctor Through Prague",

        "Step back into time and virtually experience the empty streets of
        Prague during the Black Death and plagues of the 17th and 18th
        centuries. Through video, we'll follow the footsteps of Dr. Alexander
        Schamsky, an unknown Czech hero who fought the plague in 1713. From the
        “personal protective equipment” of the time to the deserted landmarks
        of the city, you’ll immerse yourself in the forgotten history of the
        pneumonic and bubonic plagues. Our recorded video has no audio as we
        comment everything live we see. The movie was shot with a professional
        camera during times of quarantine and shows the abandoned old town.
        One of our 5 Plague Doctors will take you on the journey to visit the
        famous Charles Bridge, walk around the Old Town Square, and go into the
        Jewish Quarter, discovering hidden gems in the dark streets. We´ll stop
        by the old St. Francis hospital and conclude the tour at the convent of
        St. Agnes. So, not only will you traverse time, but you’ll also get the
        sense of travel—all from the comfort of your home.
        Looking for Prague plague-free? Try our online Nightwatchman Tour:",

        "https://source.unsplash.com/aDxmYZtYj7g",
        "https://source.unsplash.com/1ak3Z7ZmtQA",
        "https://source.unsplash.com/9QSK0IChXk0"
      ]

e14 = [
        "Cardio Dance with Drag Choreographer",

        "Get ready to cut a (living room) rug with RORYOGRAPHY, a
        San Francisco-based dance/fitness class in the spirit of
        a Richard Simmons aerobics tape!

        Throw on your most fabulous movement clothing, clear some space in your
        living room, and turn your music up...Coach Rory is bringing an
        only-in-San-Francisco experience to you! No dance experience necessary.
        All you need is a water bottle and a sense of humor.

        Class consists of a brief introduction, followed by several
        follow-in-the-moment routines that are designed to make participants
        laugh and sweat equally for 60 minutes. RORYOGRAPHY brings everyone from
        children to drag queens together in a joyous celebration of movement.
        ALL are welcome, and my specialty is people with two left feet.

        This Experience is great for team-building. Book a private experience
        for your group. Is your group larger than my listed max group size for
          private groups? Send me a message.
        Other things to note
        Let's dance! RORYOGRAPHY is best experienced through a computer or
        tablet so you can follow Coach Rory's movements.",

        "https://source.unsplash.com/t1uoNDqUs-M",
        "https://source.unsplash.com/JVnLqWGWVzs",
        "https://source.unsplash.com/DC5akQJyH4I"
      ]

e15 = [
      "Tarot with a therapy dog",

      "GREAT FOR CORPORATE TEAMS, BACHELORETTE PARTIES, BIRTHDAYs, HAPPY HOUR,
      FRIENDS GET TOGETHER.
      Contact me for additional availability.

      Experience a fun, new way to connect with friends or co-workers. Come on a
      trip around the world of tarot, learn how the cards offer guidance and help
      navigate all types of decisions. This is not the spooky tarot from the
      movies but consciousness tarot, one that inspires and motivates. No
      worries, we won't reveal all your secrets to your group members, this is
      all done in good cheer and taste.


      5 star rated team experience by Google, Facebook, Pinterest, Yelp and many
      others.

      I am a certified tarot consultant, an intuitive and a personal coach
      backed up by 20+ years of experience and I have training in many
      leadership modalities.

      We will begin with an icebreaker then learn a brief history of tarot, how
        the game is constructed and how it has been used throughout the ages.
      Then, I will guide you in a relaxing guided meditation to get in touch
      with your intuition.
      Each participant in the group that wants one get an individual reading.

      PLEASE NOTE THAT IF YOU BOOK AS ONE PERSON, YOU WILL BE JOINED BY OTHERS
      IN THE ROOM. FOR INDIVIDUAL READINGS, BOOK FOR A PRIVATE GROUP",

      "https://source.unsplash.com/z0snfFRa1fc",
      "https://source.unsplash.com/8FobV-Ub0eM",
      "https://source.unsplash.com/iuqxv7kFj64"
      ]

e16 = [
        "Dive Under the Sea with a Shark Expert",

        "Dive in and let me share my 20-year career in shark conservation,
        scientific research, campaigning and education in this story-telling,
        Shark Smart quiz, creative drawing and fact-filled experience. Plus I’ll
        give you a copy of my book called 'SHARKS' for free!

        It's fun and suitable for all ages, adults and children alike. It's
        great for SPECIAL EVENTS, PRIVATE GROUPS and TEAM-BUILDING (I've hosted
        Microsoft, Apple, Paypal and many more).

        You’ll find out how I overcame my fear of sharks and went from being
        called Shark Bait to the Shark Warrior, and how an extraordinary shark
        named Maxine changed my life. You’ll learn about shark research as you
        follow Maxine’s journey to freedom when I satellite tagged her and set
        her free after 9 years in captivity.

        My compelling videos and photos will lead you on a virtual underwater
        adventure into the oceans of the world to meet weird and wonderful
        sharks, including living dinosaurs! You’ll learn about these amazing
        animals, what threats they face, and why we need to save them.

        I'll share stories about my global travels to photograph and film
        different species of sharks, answer questions like why I've never been
        bitten, and let you in on secrets behind some of my crazy shark
        awareness campaigns. Most importantly you'll be supporting the
        conservation work of our nonprofit.

        Please send me a request for a date and time if not listed.",

        "https://source.unsplash.com/GSp6Wio4oFM",
        "https://source.unsplash.com/GBDkr3k96DE",
        "https://source.unsplash.com/titrLVi32F8"
      ]

e17 = [
      "Booty Shake with Colombian Choreographer",

      "Now, the best thing about dancing at home is that you can actually dance
      like no one is watching! Don't worry about thinking that you don't have
      skills... leave it to me!

      Btw, this is a cool gift for girlfriends, so if you want a different date
      let me know. I have plenty of experience with beginners so all you need to
      do is take the first step and request a date.

      In my experience in an hour-long class, I can teach you basic or more
      advanced booty shaking/twerk technics (depending on your preference) that
      will get you sweating and uplifting your sexiness: queen status.

      Come dance with music from the world, with people from the world!! I'm
      also an Airbnb Experience host doing dance and nightlife Experiences, so
      if you want to check out my reviews go to my profile to read what others
        have said :)

      ******************** If you're looking for personalized
      dance-lesson-experience I'm opening new slots if you DM***

      Other things to note:
      You don't need previous experience. Just let me know at the beginning of
      the class if you have any physical problems I should be aware of, so I can
      show you variations to the moves.",

      "https://source.unsplash.com/E3ABJKHr1fk",
      "https://source.unsplash.com/RwjX3Xb6FO8",
      "https://source.unsplash.com/L9tlXv983dQ"
      ]

experiences = []

experiences << e0 << e1 << e2 << e3 << e4 << e5 << e6 << e7 << e8 << e9 << e10
experiences << e11 << e12 << e13 << e14 << e15 << e16 << e17

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
  exp.photos.attach(io: file2, filename: "#{(rand(1000000..1999999))}.png", content_type: 'image/png')
  exp.photos.attach(io: file3, filename: "#{(rand(1000000..1999999))}.png", content_type: 'image/png')
  exp.save
  puts "Creating experience: #{e[0]} "
end

puts "Finished!"
