# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Conference.create(name: "American Football Conference")
Conference.create(name: "National Football Conference")

Division.create(name: "AFC East", conference_id: 1)
Division.create(name: "AFC West", conference_id: 1)
Division.create(name: "AFC North", conference_id: 1)
Division.create(name: "AFC South", conference_id: 1)
Division.create(name: "NFC East", conference_id: 2)
Division.create(name: "NFC West", conference_id: 2)
Division.create(name: "NFC North", conference_id: 2)
Division.create(name: "NFC South", conference_id: 2)

Team.create(name: "Raiders", city: "Oakland", division_id: 2, conference_id: 1)
Team.create(name: "Packers", city: "Green Bay", division_id: 7, conference_id: 2)
Team.create(name: "Seahawks", city: "Seattle", division_id: 6, conference_id: 2)
Team.create(name: "Bills", city: "Buffalo", division_id: 1, conference_id: 1)
Team.create(name: "Saints", city: "New Orleans", division_id: 8, conference_id: 2)

#Quarterback - 0, Running Back - 1, Wide Receiver - 2, Tight End - 3, Defense - 4
Player.create(name: "Josh Jacobs", position: 1, team_id: 1)
Player.create(name: "Davante Adams", position: 2, team_id: 2)
Player.create(name: "Aaron Jones", position: 1, team_id: 2)
Player.create(name: "Russell Wilson", position: 0, team_id: 3)
Player.create(name: "John Brown", position: 2, team_id: 4)
Player.create(name: "Drew Brees", position: 0, team_id: 5)
Player.create(name: "Michael Thomas", position: 2, team_id: 5)
Player.create(name: "Latavius Murray", position: 1, team_id: 5)


