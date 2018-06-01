# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
User.destroy_all
Booking.destroy_all


puts "Finished cleaning"

user1 = User.create!(
  email:"andreiadomingues@gmail.com",
  password:"123456",
  name:"Andreia Domingues",
  owner_bio:"Andreia is a tv host that doesn't like tv and prefers reading, she can be found with a book in hand at the most random places and situations: mountain tops, car repair garages and in the middle of a hurricane ",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527683260/8GaEWuxK_400x400.jpg")
user2 = User.create!(
  email:"jeromedharveng@gmail.com",
  password:"123456",
  name: "Jerome Harveng",
  owner_bio:"Jerome is a surfer, that travels the world in championships, but while other surfers like to discuss the waves to discuss philosophy (others eventually leave)",
  remote_picture_url:"http://res.cloudinary.com/pmarzagao/image/upload/v1527684917/image_2.png")
user3 = User.create!(
  email:"pedromarzagao@gmail.com",
  password:"123456",
  name: "Pedro Marzagão",
  owner_bio:"Pedro is a sky-diving professional who has spent most of his life up in the air. He goes on a new plane everyday but nothings makes him fly like a book",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527683243/Pedro_Headshot_2.jpg")

Book.create!(
  title: "Little Women",
  summary: "Little Women is a novel by American author Louisa May Alcott (1832–1888), which was originally published in two volumes in 1868 and 1869. Alcott wrote the books over several months at the request of her publisher.[1][2] Following the lives of the four March sisters—Meg, Jo, Beth and Amy—the novel details their passage from childhood to womanhood and is loosely based on the author and her three sisters.",
  user: user1,
  category: "Romance",
  address: "Rua da Alfândega, Lisbon",
  price: 8.2,
  remote_picture_url:"http://res.cloudinary.com/pmarzagao/image/upload/v1527784820/9780147514011.jpg"
)

Book.create!(
  title: "Hooked",
  summary:"Why do some products capture widespread attention while others flop? What makes us engage with certain products out of sheer habit? Is there a pattern underlying how technologies hook us? Nir Eyal answers these questions (and many more) by explaining the Hook Model—a four-step process embedded into the products of many successful companies to subtly encourage customer behavior. Through consecutive “hook cycles,” these products reach their ultimate goal of bringing users back again and again without depending on costly advertising or aggressive messaging.",
  user: user2,
  category: "Fiction",
  address: "Rua do Arsenal, Lisbon",
  price: 5,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527685225/images_2.jpg"
)

Book.create!(
  title: "Ready Player 1",
  summary:" Ready Player One is a 2011 science fiction novel, and the debut novel of American author Ernest Cline. The story, set in a dystopian 2040s, follows protagonist Wade Watts on his search for an Easter egg in a worldwide virtual reality game, the discovery of which will lead him to inherit the game creator's fortune. ",
  user: user3,
  category: "Fiction",
  address: "Rua Augusta, Lisbon",
  price: 9,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527685225/images_3.jpg"
)

Book.create!(
  title: "Human Condition",
  summary:" The Human Condition, first published in 1958, Hannah Arendt's account of how human activities should be and have been understood throughout Western history. Arendt is interested in the vita activa (active life) as contrasted with the vita contemplativa (contemplative life) and concerned that the debate over the relative status of the two has blinded us to important insights about the vita activa and the way in which it has changed since ancient times. She distinguishes three sorts of activity (labor, work, and action) and discusses how they have been affected by changes in Western history.",
  user: user1,
  category: "Non Fiction",
  address: "Rua dos Bacalhoeiros, Lisbon",
  price: 12,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527685225/images_4.jpg"
  )

Book.create!(
  title: "Educated",
  summary:" An unforgettable memoir in the tradition of The Glass Castle about a young girl who, kept out of school, leaves her survivalist family and goes on to earn a PhD from Cambridge University",
  user: user1,
  category: "Biography and Memoir",
  address: "Rua de São Bento, Lisbon",
  price: 12,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1527783391/educated_amz.jpg"
  )

Book.create!(
  title: "The Handmaid's Tale",
  summary:"A dystopian novel by Canadian author Margaret Atwood, originally published in 1985. It is set in a near-future New England, in a totalitarian, Christian theonomy that has overthrown the United States government. The novel focuses on the journey of the handmaid Offred. Her name derives from the possessive form of Fred; handmaids are forbidden to use their birth names and must echo the male, or master, whom they serve.",
  user: user1,
  category: "Fiction",
  address: "Rua Morais Soares, Lisbon",
  price: 12,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527784354/handmaidtale_amz.jpg"
  )

Book.create!(
  title: "The Power of Habit",
  summary:" In The Power of Habit, award-winning business reporter Charles Duhigg takes us to the thrilling edge of scientific discoveries that explain why habits exist and how they can be changed. Distilling vast amounts of information into engrossing narratives that take us from the boardrooms of Procter & Gamble to the sidelines of the NFL to the front lines of the civil rights movement, Duhigg presents a whole new understanding of human nature and its potential.",
  user: user2,
  category:"Non Fiction",
  address: "Avenida de Roma, Lisbon",
  price: 12,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527784577/powerofhabit_amz.jpg"
  )

Book.create!(
  title: "Principles",
  summary:" Ray Dalio, one of the world’s most successful investors and entrepreneurs, shares the unconventional principles that helped him create unique results in life and business—and which any person or organization can adopt to better achieve their goals. Dalio’s original Principles has been downloaded over thre3 million times, and this expanded and revised edition is the first version available in print.",
  user: user3,
  category: "Non Fiction",
  address: "Rua Domingos Sequeira, Lisbon",
  price: 6,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527785177/principles_amz.jpg"
  )

Book.create!(
  title: "Crushing It!",
  summary:"Four-time New York Times bestselling author Gary Vaynerchuk offers new lessons and inspiration drawn from the experiences of dozens of influencers and entrepreneurs who rejected the predictable corporate path in favor of pursuing their dreams by building thriving businesses and extraordinary personal brand2.",
  user: user2,
  category: "Non Fiction",
  address: "Rua João Anastácio Rosa, Lisbon",
  price: 6,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527786150/crushingit_amz.jpg"
  )

#new seeds

Book.create!(
  title: "Catch 22",
  summary: "Set in Italy during World War II, this is the story of the incomparable, malingering bombardier, Yossarian, a hero who is furious because thousands of people he has never met are trying to kill him. But his real problem is not the enemy—it is his own army, which keeps increasing the number of missions the men must fly to complete their service.",
  user: user1,
  category: "Romance",
  address: "Rua João Hogan, Lisbon",
  price: 8.2,
  remote_picture_url:"http://res.cloudinary.com/pmarzagao/image/upload/v1527854665/catch22.jpg"
)

Book.create!(
  title: "The Sun Also Rises",
  summary:"The quintessential novel of the Lost Generation, The Sun Also Rises is one of Ernest Hemingway's masterpieces and a classic example of his spare but powerful writing style. A poignant look at the disillusionment and angst of the post-World War I generation, the novel introduces two of Hemingway's most unforgettable characters: Jake Barnes and Lady Brett Ashley. ",
  user: user1,
  category: "Fiction",
  address: "Avenida da Liberdade, Lisbon",
  price: 5,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527854676/thsunalsorises.jpg"
)

Book.create!(
  title: "We Were The Lucky Ones",
  summary:"It is the spring of 1939 and three generations of the Kurc family are doing their best to live normal lives, even as the shadow of war grows closer. The talk around the family Seder table is of new babies and budding romance, not of the increasing hardships threatening Jews in their hometown of Radom, Poland. But soon the horrors overtaking Europe will become inescapable and the Kurcs will be flung to the far corners of the world, each desperately trying to navigate his or her own path to safety. ",
  user: user1,
  category: "Fiction",
  address: "Rua José Escada, Lisbon",
  price: 9,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527854694/luckyones.jpg"
)

Book.create!(
  title: "The One And Only Ivan",
  summary:"Inspired by the true story of a captive gorilla known as Ivan, this illustrated book is told from the point of view of Ivan himself. This paperback edition includes an author's note highlighting the differences between the fictional story and true events, a version of the author's Newbery Medal acceptance speech, Ivan's signature discussion questions, and more.",
  user: user1,
  category: "Non Fiction",
  address: "Rua Almada Negreiros, Lisbon",
  price: 12,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527854708/oneandonlyivan.jpg"
  )

Book.create!(
  title: "A Long Way From Home",
  summary:"The two-time Booker Prize-winning author now gives us a wildly exuberant, wily new novel that circumnavigates 1954 Australia, revealing as much about the country/continent as it does about three audacious individuals who take part in the infamous 10,000-mile race, the Redex Trial.",
  user: user1,
  category: "Biography and Memoir",
  address: "Rua Eduardo Viana, Lisbon",
  price: 12,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527854721/longwayhome.jpg"
  )

Book.create!(
  title: "Small Great Things",
  summary:"With richly layered characters and a gripping moral dilemma that will lead readers to question everything they know about privilege, power, and race, Small Great Things is the stunning new page-turner from Jodi Picoult.",
  user: user1,
  category: "Fiction",
  address: "Rua Alfredo Roque Gameiro, Lisbon",
  price: 12,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527854743/smallgreatthings.jpg"
  )

Book.create!(
  title: "The Great Gatsby",
  summary:"A true classic of twentieth-century literature, this edition has been updated by Fitzgerald scholar James L.W. West III to include the author’s final revisions and features a note on the composition and text, a personal foreword by Fitzgerald’s granddaughter, Eleanor Lanahan—and a new introduction by two-time National Book Award winner Jesmyn Ward.",
  user: user1,
  category:"Non Fiction",
  address: "Avenida de Berna, Lisbon",
  price: 12,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527854757/greatgatsby.jpg"
  )

Book.create!(
  title: "Swing Time",
  summary:"An ambitious, exuberant new novel moving from North West London to West Africa, from the multi-award-winning author of White Teeth and On Beauty.",
  user: user1,
  category: "Non Fiction",
  address: "Rua Josefa de Óbidos, Lisbon",
  price: 6,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527854771/swingtime.jpg"
  )

30.times do
  Booking.create!(
  paid: [true,false].sample,
  rating: 0,
  date_begin: Date.new(2018,7,1).strftime("%F"),
  date_end: Date.new(2018,7,3).strftime("%F"),
  user: User.all.sample,
  book: Book.all.sample
  )
end
