# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



cities = ["New York", "Austin", "Los Angeles", "Chicago", "San Francisco", "Boston", "Seattle", "Portland"]
cities.each {|city| City.create(name: city)}

User.create(name: "Becca Shapiro", password: "test", email: "rshapiro3@gmail.com", username: "bshap27", city_id: 1)
User.create(name: "Alex Lee", password: "test", email: "alexlee@gmail.com", username: "alee", city_id: 2)
User.create(name: "Chloe Lee", password: "test", email: "chloelee@gmail.com", username: "clee", city_id: 3)

categories = ['Food', 'Nightlife', 'Style', 'History', "Art", "Sports", 'Architecture', "Other"]

Post.create(tagline: 'This city', description: "Is the best!", city_id: 1, user_id: 1, category_id: 1)
Post.create(tagline: 'No, MY city', description: "Is the best!", city_id: 2, user_id: 2, category_id: 2)
Post.create(tagline: 'Nah guys', description: "mine is totally the best!", city_id: 3, user_id: 3, category_id: 3)

Comment.create(content: "ok, whatever" , user_id: 1, post_id: 2)
Comment.create(content: "ok, whatever" , user_id: 2, post_id: 3)
Comment.create(content: "ok, whatever" , user_id: 3, post_id: 1)