# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |index|
	assembly = Assembly.create!(name: Faker::Military.navy_rank)
	part = Part.create!(part_number: Faker::Number.between(1,100))
	assembly_part = Assembly.find(Assembly.first.id+index).parts = [Part.find(Part.first.id + rand(10)), Part.find(Part.first.id + rand(10)), Part.find(Part.first.id + rand(10))]

end

9.times do |index|
assembly_part = Assembly.find(Assembly.first.id+index).parts = [Part.find(Part.first.id + rand(10)),
 Part.find(Part.first.id + rand(10)),
  Part.find(Part.first.id + rand(10))]

end