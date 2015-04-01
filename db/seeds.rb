# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



cities = { 
  "New York": "http://img3.wikia.nocookie.net/__cb20131222172706/glee/images/thumb/c/c8/NY-skyline.jpg/800px-NY-skyline.jpg",
  "Seattle": "http://www.usapics.net/wallpapers/2012/03/seattle-tower-washington--600x800.jpg",
  "Chicago": "http://www.altergroup.com/blog/wp-content/uploads/2010/10/downtown-chicago.jpg",
  "Boston": "http://guide.trustedtours.com/wp-content/uploads/2012/08/800px-Public_Garden_Boston.jpg",
  "Austin": "https://farm6.staticflickr.com/5507/11455436595_a8a29323f9_c.jpg",
  "Los Angeles": "http://indianinkonline.com/wp-content/uploads/2014/11/palm-trees-800x600.jpg",
  "San Francisco": "http://www.forgeips.co.uk/sites/default/files/Golden_Gate_Bridge_.jpg",
  "Washington D.C.": "http://ta.firefly-hosting.com/wp-content/uploads/2013/07/fireworks-washington-dc.jpg",
  "Portland": "https://waldobungie.files.wordpress.com/2011/06/dsc_0189.jpg"
}
cities.each {|city, image| City.create(name: city, image: image)}


User.create(nickname: "Jack Johnson")
User.create(nickname: "Jill Dorn")
User.create(nickname: "Bob Marley")

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

