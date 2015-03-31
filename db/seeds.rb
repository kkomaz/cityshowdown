# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



cities = { 
  "New York": "https://hausmanllc.files.wordpress.com/2013/06/statue-of-liberty-in-new-york-city-united-states.jpg",
  "Seattle": "https://citizenfable.files.wordpress.com/2012/11/seattle-skyline-picture.jpeg",
  "Chicago": "http://www.marriott.com/Images/MiniStores/Header_Images/Destinations/en/Chicago_hotels_skyline_fireworks.jpg",
  "Boston": "http://www.massvacation.com/wp-content/uploads/2013/06/1_Boston__0000_iStock_000011012295Large.jpg",
  "Austin": "http://centraltexasmurals.com/wp-content/uploads/2011/01/good-morning-austin-jpg-copy.jpg",
  "Los Angeles": "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT18uyZ9e35V4VsANzZeyXtUCPgQ3j4DRlsBLEEkCLB9mVzCB5P",
  "San Francisco": "http://www.sanfrancisco.travel/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg",
  "Washington D.C.": "http://images.boomsbeat.com/data/images/full/4684/1-jpg.jpg",
  "Portland": "https://waldobungie.files.wordpress.com/2011/06/dsc_0189.jpg"
}
cities.each {|city, image| City.create(name: city, image: image)}

User.create(name: "Becca Shapiro")
User.create(name: "Chloe Lee")

categories = ['Food', 'Nightlife', 'Style', 'History', "Art", "Sports", 'Architecture', "Other"]
categories.each {|category| Category.create(name: category)}

Post.create(tagline: 'This city', description: "Is the best!", city_id: 1, user_id: 1, category_id: 1, pro_or_con: 1)
Post.create(tagline: 'This city', description: "Is the worst!", city_id: 1, user_id: 2, category_id: 1, pro_or_con: 0)
Post.create(tagline: 'No, MY city', description: "Is the best!", city_id: 2, user_id: 2, category_id: 2, pro_or_con: 1)
Post.create(tagline: 'hate this city', description: "so much!", city_id: 2, user_id: 3, category_id: 2, pro_or_con: 0)
Post.create(tagline: 'Nah guys', description: "mine is totally the best!", city_id: 3, user_id: 3, category_id: 3, pro_or_con: 1)
Post.create(tagline: 'never going back here', description: "ever", city_id: 3, user_id: 1, category_id: 3, pro_or_con: 0)

Comment.create(content: "ok, whatever" , user_id: 1, post_id: 2)
Comment.create(content: "ok, whatever" , user_id: 2, post_id: 3)
Comment.create(content: "ok, whatever" , user_id: 3, post_id: 1)

