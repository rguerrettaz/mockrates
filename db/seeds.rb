
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

challenge1 = Challenge.create(title: "Addition", content: "Create a method called add that takes two parameters and returns the sum", interactive: true)
challenge1.specs.build(content: "add(2, 3) == 5").save
challenge1.specs.build(content: "add(10, 3) == 13").save
challenge1.specs.build(content: "add(0, -5) == -5").save

challenge2 = Challenge.create(title: "Subtraction", content: "Create a method called subtract that takes two parameters and returns the difference.", interactive: true)
challenge2.specs.build(content: "subtract(2, 3) == -1").save
challenge2.specs.build(content: "subtract(10, 200) == -190").save
challenge2.specs.build(content: "subtract(200, 3) == 197").save

Phase.create(phase_number: 1)
Phase.create(phase_number: 2)
Phase.create(phase_number: 3)
Week.create(name: 'Ruby',phase_id: 1)
Week.create(name: 'OO Programming',phase_id: 1)
Week.create(name: 'Database',phase_id: 1)
Week.create(name: 'Sinatra',phase_id: 2)
Week.create(name: 'Front End',phase_id: 2)
Week.create(name: 'Web Apps',phase_id: 2)
Week.create(name: 'Rails Crash Course',phase_id: 3)
Week.create(name: 'Rails Deep Dive',phase_id: 3)
Week.create(name: 'Rails Final Project',phase_id: 3)

