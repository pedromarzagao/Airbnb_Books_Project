# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
User.destroy_all


puts "Finished cleaning"


User.create(email:"andreiadomingues@gmail.com", password:"123456")
User.create(email:"jeromedharveng@gmail.com", password:"123456")
User.create(email:"pedromarzagao@gmail.com", password:"123456")
User.create(email:"alexandrefontes@gmail.com", password:"123456")


Book.create(address: "Paris, France" ,title: "Little Women", summary: "Following the lives of the four March sisters—Meg, Jo, Beth and Amy—the novel details their passage from childhood to womanhood", user_id: "1")
Book.create(address: "Lille, France" ,title: "Hooked", summary:"Guide to building habit-forming technology. Written for product managers, designers, marketers, and startup founders", user_id: "2")
Book.create(address: "Roubaix, France" ,title: "Human Condition", summary:" Hannah Arendt's account of how human activities should be and have been understood throughout Western history. Arendt is interested in the vita activa (active life) as contrasted with the vita contemplativa", user_id: "3")
Book.create(address: "Tourcoing, France" ,address: "Paris, France" ,title: "Human Condition", summary:" Hannah Arendt's account of how human activities should be and have been understood throughout Western history. Arendt is interested in the vita activa (active life) as contrasted with the vita contemplativa", user_id: "4")

