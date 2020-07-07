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

# amy = User.create(username: "Amy", first_name: "Amy", last_name: "Smith" )
# travy = User.create(username: "travisprol0", first_name: "Travis", last_name: "Prol" )
# steve = User.create(username: "afrolambo", first_name: "Stephen", last_name: "Galvan" )


 alabama = Location.create(state: "Alabama", abbreviation: "AL" )
 alasksa = Location.create(state: "Alaska", abbreviation: "AK")
 arizona = Location.create(state: "Arizona", abbreviation: "AZ")
 arkansas = Location.create(state: "Arkansas", abbreviation: "AR")
 california = Location.create(state: "California", abbreviation: "CA")
 colorado = Location.create(state: "Colorado", abbreviation: "CO")
 connecticut = Location.create(state: "Connecticut", abbreviation: "CT")
 delaware = Location.create(state: "Delaware", abbreviation: "DE")
 dc = Location.create(state: "District of Columbia", abbreviation: "DC")
 florida = Location.create(state: "Florida", abbreviation: "FL")
 guam = Location.create(state: "Guam", abbreviation: "GU")
 georgia = Location.create(state: "Georgia", abbreviation: "GA")
 hawaii= Location.create(state: "Hawaii", abbreviation: "HI")
 idaho = Location.create(state: "Idaho", abbreviation: "ID")
 illinois = Location.create(state: "Illinois", abbreviation: "IL")
 indiana = Location.create(state: "Indiana", abbreviation: "IN")
 iowa = Location.create(state: "Iowa", abbreviation: "IA")
 kansas= Location.create(state: "Kansas", abbreviation: "KS")
 kentucky = Location.create(state: "Kentucky", abbreviation: "KY")
 louisiana = Location.create(state: "Louisiana", abbreviation: "LA")
 maine = Location.create(state: "Maine", abbreviation: "ME")
 maryland = Location.create(state: "Maryland", abbreviation: "MD")
 massachusetts = Location.create(state: "Massachusetts", abbreviation: "MA")
 michigan = Location.create(state: "Michigan", abbreviation: "MI")
 minnesota = Location.create(state: "Minnesota", abbreviation: "MN")
 mississippi = Location.create(state: "Mississippi", abbreviation: "MS")
 missouri = Location.create(state: "Missouri", abbreviation: "MO")
 montana = Location.create(state: "Montana", abbreviation: "MT")
 nebraska = Location.create(state: "Nebraska", abbreviation: "NE")
 nevada = Location.create(state: "Nevada", abbreviation: "NV")
 new_hampshire = Location.create(state: "New Hampshire", abbreviation: "NH")
 new_jersey = Location.create(state: "New Jersey", abbreviation: "NJ")
 new_mexico= Location.create(state: "New Mexico", abbreviation: "NM")
 new_york = Location.create(state: "New York", abbreviation: "NY")
 northern_mariana_islands = Location.create(state: "Northern Mariana Islands", abbreviation: "MP")
 north_carolina= Location.create(state: "North Carolina", abbreviation: "NC")
 north_dakota = Location.create(state: "North Dakota", abbreviation: "ND")
 ohio = Location.create(state: "Ohio", abbreviation: "OH")
 oklahoma = Location.create(state: "Oklahoma", abbreviation: "OK")
 oregon = Location.create(state: "Oregon", abbreviation: "OR")
 pennsylvania = Location.create(state: "Pennsylvania", abbreviation: "PA")
 puerto_rico = Location.create(state: "Puerto Rico", abbreviation: "PR")
 rhode_island = Location.create(state: "Rhode Island", abbreviation: "RI")
 south_carolina = Location.create(state: "South Carolina", abbreviation: "SC")
 south_dakota = Location.create(state: "South Dakota", abbreviation: "SD")
 tennessee = Location.create(state: "Tennessee", abbreviation: "TN")
 texas = Location.create(state: "Texas", abbreviation: "TX")
 utah = Location.create(state: "Utah", abbreviation: "UT")
 vermont = Location.create(state: "Vermont", abbreviation: "VT")
 virgin_islands = Location.create(state: "Virgin Islands", abbreviation: "VI")
 virginia = Location.create(state: "Virginia", abbreviation: "VA")
 washington = Location.create(state: "Washington", abbreviation: "WA")
 west_virginia = Location.create(state: "West Virginia", abbreviation: "WV")
 wisconsin = Location.create(state: "Wisconsin", abbreviation: "WI")
 wyoming = Location.create(state: "Wyoming", abbreviation: "WY")
# ny = Location.create(state: "NY", tests: 200, postive: 180, negative: 20, hospitalized_currently: 100, in_icu_currently: 40, on_ventilator_currently: 20, recovered: 90, death: 90)




# one = Favorite.create(user_id: amy.id , location_id: nj.id)
# two = Favorite.create(user_id: travy.id, location_id: ny.id)
# three = Favorite.create(user_id: amy.id , location_id: ny.id)
# four = Favorite.create(user_id: travy.id, location_id: nj.id)



