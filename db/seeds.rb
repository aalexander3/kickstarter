# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.create(name: "Save the bears!", description: "Bears are dying. Adopt a bear today.", goal: 400)
Project.create(name: "Save the bees!", description: "Bees are dying. Adopt a bee today.", goal: 40003)
Project.create(name: "Save the whales!", description: "Whales are dying. Adopt a whale today.",goal: 2093)

Backer.create(name: "Gil", total_wallet: 5)
Backer.create(name: "Arren", total_wallet: 10)
Backer.create(name: "Daniel", total_wallet: 50000)
