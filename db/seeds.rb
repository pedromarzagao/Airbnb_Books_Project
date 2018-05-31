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
user4 = User.create!(
  email:"alexandrefontes@gmail.com",
  password:"123456",
  name: "Alexandre Fontes",
  owner_bio:"Alexandre is a former journalist who has interviewed murderers on death row, flown over L.A. with the LAPD and patrolled with the Royal Canadian Mounted Police near the Arctic. He’s also reported from the Caribbean, Africa and Kuwait’s border with Iraq. His books have been published in nearly 30 countries, including an illegal translation produced in Iran.",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527683260/8GaEWuxK_400x400.jpg")


Book.create!(
  title: "Little Women",
  summary: "Little Women is a novel by American author Louisa May Alcott (1832–1888), which was originally published in two volumes in 1868 and 1869. Alcott wrote the books over several months at the request of her publisher.[1][2] Following the lives of the four March sisters—Meg, Jo, Beth and Amy—the novel details their passage from childhood to womanhood and is loosely based on the author and her three sisters.",
  user: user1,
  category: "Coming-of-Age Fiction",
  address: "Paris, France",
  price: 8.2,
  remote_picture_url:"http://res.cloudinary.com/pmarzagao/image/upload/v1527685225/images_1.jpg"
)

Book.create!(
  title: "Hooked",
  summary:"Why do some products capture widespread attention while others flop? What makes us engage with certain products out of sheer habit? Is there a pattern underlying how technologies hook us?
Nir Eyal answers these questions (and many more) by explaining the Hook Model—a four-step process embedded into the products of many successful companies to subtly encourage customer behavior. Through consecutive “hook cycles,” these products reach their ultimate goal of bringing users back again and again without depending on costly advertising or aggressive messaging.",
  user: user2,
  category: "Fiction",
  address: "Lille, France",
  price: 5,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527685225/images_2.jpg"
)

Book.create!(
  title: "Ready Player 1",
  summary:" Ready Player One is a 2011 science fiction novel, and the debut novel of American author Ernest Cline. The story, set in a dystopian 2040s, follows protagonist Wade Watts on his search for an Easter egg in a worldwide virtual reality game, the discovery of which will lead him to inherit the game creator's fortune. ",
  user: user3,
  category: "Drama",
  address: "Roubaix, France",
  price: 9,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527685225/images_3.jpg"
)

Book.create!(
  title: "Human Condition",
  summary:" The Human Condition, first published in 1958, Hannah Arendt's account of how human activities should be and have been understood throughout Western history. Arendt is interested in the vita activa (active life) as contrasted with the vita contemplativa (contemplative life) and concerned that the debate over the relative status of the two has blinded us to important insights about the vita activa and the way in which it has changed since ancient times. She distinguishes three sorts of activity (labor, work, and action) and discusses how they have been affected by changes in Western history.",
  user: user4,
  category: "Self-Improvement",
  address: "Tourcoing, France",
  price: 12,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527685225/images_4.jpg"
  )

10.times do
  Booking.create!(
  paid: true,
  rating: "What an amazing book! Definitely recommend it.",
  date_begin: Date.new(2018,7,1).strftime("%F"),
  date_end: Date.new(2018,7,3).strftime("%F"),
  user: User.all.sample,
  book: Book.all.sample
  )
end
