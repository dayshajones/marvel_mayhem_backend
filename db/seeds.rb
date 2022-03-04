# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

superheros = Team.create(name: "Superheros")
niceguys = Team.create(name: "Nice Guys")
friends = Team.create(name: "Friends")

Character.create(name: "Thor", description: "Son of Odin", thumbnail: "https://static.wikia.nocookie.net/marvelcinematicuniverse/images/1/13/Thor-EndgameProfile.jpg/revision/latest?cb=20190423174911",
team_id: 1)