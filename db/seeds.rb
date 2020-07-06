# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Location.destroy_all 
Favorite.destroy_all 

amy = User.create(username: "Amy", first_name: "Amy", last_name: "Smith" )
travy = User.create(username: "travisprol0", first_name: "Travis", last_name: "Prol" )
steve = User.create(username: "afrolambo", first_name: "Stephen", last_name: "Galvan" )


nj = Location.create(state: "NJ", tests: 100 , postive: 90, negative: 10, hospitalized_currently: 50, in_icu_currently: 20, on_ventilator_currently: 10, recovered: 45, death: 45)
ny = Location.create(state: "NY", tests: 200, postive: 180, negative: 20, hospitalized_currently: 100, in_icu_currently: 40, on_ventilator_currently: 20, recovered: 90, death: 90)


one = Favorite.create(user_id: amy.id , location_id: nj.id)
two = Favorite.create(user_id: travy.id, location_id: ny.id)
three = Favorite.create(user_id: amy.id , location_id: ny.id)
four = Favorite.create(user_id: travy.id, location_id: nj.id)



